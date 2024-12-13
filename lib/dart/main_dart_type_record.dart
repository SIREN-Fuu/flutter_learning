import '../../../plugins/logger.dart';

void main() {
  // 名前なしのRecord型
  const basicData = (100100, 'スティーブ・ジョブス');
  final a = basicData.$1;
  final b = basicData.$2;

  logger
    ..i('Result: $a')
    ..i('Result: $b');

  // 名前付きのRecord型
  const namedData = (myNumber: 1000101, myName: 'ティム・クック');
  final c = namedData.myNumber;
  final d = namedData.myName;

  logger
    ..i('Result: $c')
    ..i('Result: $d');

  // クラスインスタンス作成
  final myData = MyData(10001010, 'ジョニー・アイブ');

  // Getしてみる
  final e = myData.getData;
  logger
    ..i('Result: ${e.myNumber}')
    ..i('Result: ${e.myName}');

  // Methodの返り値を試してみる
  final f = myData.getPersonal();
  logger
    ..i('Result: ${f.myNumber}')
    ..i('Result: ${f.myName}');
}

class MyData {
  MyData(this.pNumber, this.pName);

  final int pNumber;
  final String pName;

  ({int myNumber, String myName}) get getData =>
      (myNumber: pNumber, myName: pName);

  ({int myNumber, String myName}) getPersonal() {
    return (myNumber: pNumber, myName: pName);
  }
}
