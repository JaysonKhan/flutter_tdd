import 'dart:convert';

import 'package:flutter_tdd/core/error/exeptions.dart';
import 'package:flutter_tdd/feature/number_trivia/data/models/number_trivia_model.dart';
import 'package:http/http.dart';

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTriviaModel> getConcreteNumberTrivia(int number);

  Future<NumberTriviaModel> getRandomNumberTrivia();
}

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaRemoteDataSource {
  final Client client;

  NumberTriviaRemoteDataSourceImpl({required this.client});

  @override
  Future<NumberTriviaModel> getConcreteNumberTrivia(int number) =>
      _getTriviaFromUrl(Uri.parse("http://numbersapi.com/$number"));

  @override
  Future<NumberTriviaModel> getRandomNumberTrivia() =>
      _getTriviaFromUrl(Uri.parse("http://numbersapi.com/random/trivia"));

  Future<NumberTriviaModel> _getTriviaFromUrl(Uri uri) async {
    final response = await client
        .get(uri, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return NumberTriviaModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}
