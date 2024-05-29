import 'package:dio/dio.dart';
import 'package:my_gellary/core/cache/cache_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Authorization"] =
        CacheHelper().getData(key: "token") != null
            ? 'Bearer ${CacheHelper().getData(key: "token")}'
            : null;
    super.onRequest(options, handler);
  }
}
