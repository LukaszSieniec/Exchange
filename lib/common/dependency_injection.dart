import 'package:exchange/common/app_environment.dart';
import 'package:exchange/common/dependency_injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(AppEnvironment appEnvironment) {
  getIt.registerSingleton(appEnvironment);
  getIt.init();
}

T inject<T extends Object>({
  String? name,
  dynamic first,
  dynamic second,
}) =>
    getIt.get<T>(
      instanceName: name,
      param1: first,
      param2: second,
    );
