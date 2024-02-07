import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../go_router_child/router/app.dart';

/*
  最新のFlutterに対応するため、動画と少しコードが変わりました
*/

void main() {
  const app = App();
  const scope = ProviderScope(child: app);
  runApp(scope);
}
