
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'app_storage.dart';

@module
abstract class TestModules {
  @lazySingleton
  AppStorage get appStorage => AppStorage();

  @lazySingleton
  Dio get dio => Dio();
}