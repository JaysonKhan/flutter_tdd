import 'dart:convert';
import 'package:flutter_tdd/core/error/exeptions.dart';
import 'package:flutter_tdd/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTriviaModel> getLastNumberTrivia();
  Future<NumberTriviaModel> getNumberTrivia(int number);
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource{
  final SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheNumberTrivia(triviaToCache) async {
    sharedPreferences.setString(CACHED_NUMBER_TRIVIA, jsonEncode(triviaToCache.toJson()));
    sharedPreferences.setString("$CACHED_NUMBER_TRIVIA${triviaToCache.number}", jsonEncode(triviaToCache.toJson()));
  }

  @override
  Future<NumberTriviaModel> getLastNumberTrivia() {
    final jsonSting = sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
    if(jsonSting != null){
      return Future.value(NumberTriviaModel.fromJson(jsonDecode(jsonSting)));
    }else{
      throw CacheException();
    }
  }

  @override
  Future<NumberTriviaModel> getNumberTrivia(int number) {
    final jsonSting = sharedPreferences.getString("$CACHED_NUMBER_TRIVIA$number");
    if(jsonSting != null){
      return Future.value(NumberTriviaModel.fromJson(jsonDecode(jsonSting)));
    }else{
      throw CacheException();
    }
  }
}