import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_provider/injector.config.dart';

final getIt= GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true
)
void configureDependencies() => getIt.init();