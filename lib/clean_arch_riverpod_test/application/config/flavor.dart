import 'package:flutter_learning/clean_arch_riverpod_test/application/types/flavor.dart';

/// フレーバー
Flavor flavor = _readFlavor();

/// 設定されたフレーバーを読み取る
Flavor _readFlavor() {
  const flavorString = String.fromEnvironment('flavor');
  if (flavorString == 'dev') {
    return Flavor.dev;
  } else if (flavorString == 'stg') {
    return Flavor.stg;
  } else if (flavorString == 'prd') {
    return Flavor.prd;
  } else {
    // 指定がないときは dev を使う
    return Flavor.dev;
  }
}