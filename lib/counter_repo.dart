
import 'package:injectable/injectable.dart';

import 'api_client.dart';
import 'controller.dart';
import 'icounter_repo.dart';
import 'injector.dart';

///LazySingleton  whenever call this ICounterRepo calls The CounterRepo will trigger
@LazySingleton(as: ICounterRepo)
class CounterRepo implements ICounterRepo {
  @override
  Future<void> getData() async {
    ApiClient apiClient = getIt<ApiClient>();
    apiClient.getData();
  }
}
