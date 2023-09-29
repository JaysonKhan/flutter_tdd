import 'package:flutter_tdd/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRepository{
  Future <Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future <Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}