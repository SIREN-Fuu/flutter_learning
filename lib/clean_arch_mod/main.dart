import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/router/app.dart';

void main() {
  const app = App();
  const scope = ProviderScope(child: app);

  // Device Preview
  const Widget window = scope;
  // if (kIsWeb) {
  //   window = DevicePreview(
  //     builder: (context) => scope,
  //   );
  // }

  runApp(window);
}
