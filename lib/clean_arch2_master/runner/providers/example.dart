import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../runner/notifiers/example.dart';

typedef _Notifier = ExampleNotifier;
typedef _State = String;

/// Example
final exampleStateProvider = NotifierProvider<_Notifier, _State>(
  () {
    return _Notifier();
  },
);
