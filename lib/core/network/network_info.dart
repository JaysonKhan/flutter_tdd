import 'package:internet_connection_checker/internet_connection_checker.dart';


// interface ham implement ham shu yerda yozilarkan!!!

// Interface
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

// Implement
class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImpl(this.internetConnectionChecker);

  @override
  Future<bool> get isConnected => internetConnectionChecker.hasConnection;
}
