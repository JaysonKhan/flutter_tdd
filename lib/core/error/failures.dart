import 'package:equatable/equatable.dart';

abstract class Failure {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        runtimeType == other.runtimeType && other is Failure;
  }

  @override
  int get hashCode {
    return runtimeType.hashCode;
  }
}

// Umumiy yuzaga kelishi mumkin bo'lgan xatoliklar
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
