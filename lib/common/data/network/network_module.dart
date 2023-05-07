import 'package:exchange/common/app_environment.dart';
import 'package:exchange/common/dependency_injection.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  static const Duration _timeout = Duration(seconds: 6);

  @lazySingleton
  PrettyDioLogger logger() => PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      );

  @lazySingleton
  Dio dio(PrettyDioLogger logger) {
    final AppEnvironment appEnvironment = inject<AppEnvironment>();

    final Dio dio = Dio()
      ..options = BaseOptions(
        baseUrl: appEnvironment.apiUrl,
        connectTimeout: _timeout,
        receiveTimeout: _timeout,
      );

    dio.interceptors.addAll([logger]);

    return dio;
  }
}
