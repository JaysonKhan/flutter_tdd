part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaEvent with _$NumberTriviaEvent {
  const factory NumberTriviaEvent.started() = _Started;
  const factory NumberTriviaEvent.getConcreteNumber(String numberString) = _ConcreteEvent;
  const factory NumberTriviaEvent.getRandomNumber() = _RandomEvent;
}
