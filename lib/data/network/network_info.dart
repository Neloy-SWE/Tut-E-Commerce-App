import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo{
  Future<bool> get isConnected;
}
class NetworkInfoImpl implements NetworkInfo{
  NetworkInfoImpl(this._dataConnectionChecker);
  DataConnectionChecker _dataConnectionChecker;
  @override
  Future<bool> get isConnected => _dataConnectionChecker.hasConnection;

}