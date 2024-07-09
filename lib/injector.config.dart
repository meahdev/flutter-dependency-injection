// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'api_client.dart' as _i3;
import 'app_storage.dart' as _i4;
import 'controller.dart' as _i8;
import 'counter_repo.dart' as _i7;
import 'icounter_repo.dart' as _i6;
import 'modules.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final testModules = _$TestModules();
    gh.singleton<_i3.ApiClient>(() => _i3.ApiClient());
    gh.lazySingleton<_i4.AppStorage>(() => testModules.appStorage);
    gh.lazySingleton<_i5.Dio>(() => testModules.dio);
    gh.lazySingleton<_i6.ICounterRepo>(() => _i7.CounterRepo());
    gh.factory<_i8.YourControllerClass>(
        () => _i8.YourControllerClass(gh<_i6.ICounterRepo>()));
    return this;
  }
}

class _$TestModules extends _i9.TestModules {}
