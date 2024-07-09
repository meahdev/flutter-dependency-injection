
import 'package:injectable/injectable.dart';

/// Client class
@singleton
class ApiClient {
  Future<void> getData() async {
    print('got the data');
  }
}