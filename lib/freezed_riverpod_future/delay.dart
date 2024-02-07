import '../../../freezed_riverpod_future/freezed.dart';

class ApiSimulator {
  int globalCounter = 1;
  bool executing = false;

  // 時間のかかるAPI通信を模擬
  Future<AccountInfo> accountFuture() async {
    final result = await Future.delayed(const Duration(seconds: 5), () {
      // 5秒待機
      return AccountInfo(
        name: 'Nina',
        age: 20,
        lengthCounter: ['a', 'b', 'c'],
        counter: globalCounter++,
      );
    });
    return result;
  }
}
