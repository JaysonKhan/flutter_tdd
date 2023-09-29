import 'package:flutter_tdd/core/network/network_info.dart';
import 'package:flutter_tdd/core/utils/input_convertor.dart';
import 'package:flutter_tdd/feature/number_trivia/data/datasources/number_trivia_locale_data_source.dart';
import 'package:flutter_tdd/feature/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:flutter_tdd/feature/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:flutter_tdd/feature/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final sharedPref = await SharedPreferences.getInstance();
  //! Feature
  //BLOC uchun
  sl.registerFactory(() => NumberTriviaBloc(
        getConcreteNumberTrivia: sl.call(),
        getRandomNumberTrivia: sl.call(),
        inputConvertor: sl.call(),
      ));
  // UseCase uchun
  sl.registerLazySingleton(() => GetConcreteNumberTrivia(sl.call()));
  sl.registerLazySingleton(() => GetRandomNumberTrivia(sl.call()));
  sl.registerLazySingleton(() => InputConverter());

  // Repository uchun
  sl.registerLazySingleton<NumberTriviaRepository>(
      () => NumberTriviaRepositoryImpl(
            remoteDataSource: sl(),
            localDataSource: sl(),
            networkInfo: sl(),
          ));
  //Data Source

  sl.registerLazySingleton<NumberTriviaRemoteDataSource>(
      () => NumberTriviaRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<NumberTriviaLocalDataSource>(
      () => NumberTriviaLocalDataSourceImpl(sharedPreferences: sl()));
  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  sl.registerLazySingleton<SharedPreferences>(() => sharedPref);

  sl.registerLazySingleton(() => Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());

}
