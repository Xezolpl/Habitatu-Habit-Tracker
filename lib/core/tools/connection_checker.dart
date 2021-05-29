import 'package:connectivity/connectivity.dart';

abstract class InternetConnectionChecker {
  static final connectivity = Connectivity();

  static Future<bool> check() async {
    return await connectivity.checkConnectivity() != ConnectivityResult.none;
  }

  static Stream<ConnectivityResult> internetConnectionStream() {
    return connectivity.onConnectivityChanged;
  }
}
