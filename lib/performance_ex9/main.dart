import 'package:flutter/foundation.dart';

void main() {
  final s = Uint8List(100000000);
  final sw = Stopwatch()..start();
  for (var i = 0, j = s.length; i < j; i += 5) {
    String.fromCharCodes(s.getRange(i, i + 5));
  }
  debugPrint('Using getRange(): ${sw.elapsedMilliseconds}ms');

  sw.reset();
  for (var i = 0, j = s.length; i < j; i += 5) {
    String.fromCharCodes(s.sublist(i, i + 5));
  }
  debugPrint('Using subList(): ${sw.elapsedMilliseconds}ms');
}
