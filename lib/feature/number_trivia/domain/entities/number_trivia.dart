import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NumberTrivia {
  final String text;
  final int number;

  const NumberTrivia({
    required this.text,
    required this.number,
  });

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        runtimeType == other.runtimeType &&
            other is NumberTrivia &&
            text == other.text &&
            number == other.number;
  }

  @override
  int get hashCode {
    return number.hashCode;
  }
}
