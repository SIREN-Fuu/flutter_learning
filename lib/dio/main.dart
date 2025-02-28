import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter_learning/plugins/logger.dart';

class DioGoogleTest {
  DioGoogleTest() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://127.0.0.1:3001',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      ),
    );

    // インターセプターを追加
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          logger.d('[Req] ${options.path}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          logger.d(
            '[Res] ${response.requestOptions.path} Status:${response.statusCode}',
          );
          handler.next(response);
        },
        onError: (DioException error, handler) {
          logger.e(
            '[Error] Status: ${error.response?.statusCode ?? 'Unknown'}: ${error.message}',
          );
          handler.next(error);
        },
      ),
    );

    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        logPrint: (log) => logger.w('[Retry] $log'),
        retries: 3,
        retryDelays: const [
          Duration(seconds: 1),
          Duration(seconds: 2),
          Duration(seconds: 3),
        ],
      ),
    );
  }
  late Dio dio;
}

void main() async {
  final dioGoogleTest = DioGoogleTest();
  try {
    await dioGoogleTest.dio.get<dynamic>('/test_retry');
  } catch (e) {
    logger.e('[Exception] $e');
  }
  logger.i('End');
}
