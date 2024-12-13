import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_learning/plugins/logger.dart';

class DioGoogleTest {
  DioGoogleTest() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.google.com',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      ),
    );

    // インターセプターを追加
    dio.interceptors.add(LogInterceptor(request: true, responseBody: true));
    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        // specify log function (optional)
        logPrint: print,
        // retry count (optional)
        retries: 3,
        retryDelays: const [
          // set delays between retries (optional)
          // wait 1 sec before first retry
          Duration(seconds: 1),
          // wait 2 sec before second retry
          Duration(seconds: 2),
          // wait 3 sec before third retry
          Duration(seconds: 3),
        ],
      ),
    );
  }
  late Dio dio;
}

void main() {
  final dioGoogleTest = DioGoogleTest();
  dioGoogleTest.dio.get<dynamic>('/').then((response) {
    logger.d(response.data);
  });
}
