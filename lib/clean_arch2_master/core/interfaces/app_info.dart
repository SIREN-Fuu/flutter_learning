// ignore_for_file: one_member_abstracts

/// アプリ情報
abstract interface class AppInfo {
  /// このアプリのバージョンを取得
  Future<String> getAppVersion();
}
