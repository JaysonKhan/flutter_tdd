import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/error/exeptions.dart';
import 'package:flutter_tdd/core/error/failures.dart';
import 'package:flutter_tdd/core/network/network_info.dart';
import 'package:flutter_tdd/feature/number_trivia/data/datasources/number_trivia_locale_data_source.dart';
import 'package:flutter_tdd/feature/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:flutter_tdd/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd/feature/number_trivia/domain/repositories/number_trivia_repository.dart';

typedef Future<NumberTriviaModel> _ConcreteOrRandomChooser();

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
    int number,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia =
            await remoteDataSource.getConcreteNumberTrivia(number);
        localDataSource.cacheNumberTrivia(remoteTrivia);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localeTrivia = await localDataSource.getNumberTrivia(number);
        return Right(localeTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    return _getTrivia(() => remoteDataSource.getRandomNumberTrivia());
  }

  Future<Either<Failure, NumberTrivia>> _getTrivia(
    _ConcreteOrRandomChooser getConcreteOrRandom,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia = await getConcreteOrRandom();
        localDataSource.cacheNumberTrivia(remoteTrivia);
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localeTrivia = await localDataSource.getLastNumberTrivia();
        return Right(localeTrivia);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
