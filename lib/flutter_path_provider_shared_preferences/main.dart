import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'freezed_ex.dart';

void main() => runApp(const MyApp());

final _router = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
  ],
);

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final saveTextController = TextEditingController();
    final readTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Main Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            style: Theme.of(context).textTheme.headlineSmall,
            'Path Provider TEST',
          ),
          const Text(
            'Save Text',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 16),
            child: TextField(
              controller: saveTextController,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              enabled: true,
              textAlign: TextAlign.center,
              // 入力数
              maxLength: 10,
              style: const TextStyle(color: Colors.red),
              obscureText: false,
              maxLines: 1,
              //パスワード
              // onChanged: _handleText,
            ),
          ),
          const Text(
            'Read Text',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 16),
            child: TextField(
              controller: readTextController,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              enabled: false,
              textAlign: TextAlign.center,
              // 入力数
              maxLength: 10,
              style: const TextStyle(color: Colors.red),
              obscureText: false,
              maxLines: 1,
            ),
          ),
          OverflowBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => {
                  _readFile()
                      .then((value) => readTextController.text = value.text),
                },
                child: const Text('Read File'),
              ),
              ElevatedButton(
                onPressed: () => {
                  _saveFile(
                    UnfreezedEx(
                      text: saveTextController.text,
                      name: 'Mna',
                      age: 18,
                    ).toStringEx(),
                  ),
                },
                child: const Text('Save File'),
              ),
            ],
          ),
          OverflowBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => {
                  _readSP()
                      .then((value) => readTextController.text = value.text),
                },
                child: const Text('Read SP'),
              ),
              ElevatedButton(
                onPressed: () => {
                  _saveSP(
                    UnfreezedEx(
                      text: saveTextController.text,
                      name: 'Mna',
                      age: 18,
                    ).toStringEx(),
                  ),
                },
                child: const Text('Save SP'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _saveFile(String jsonString) async {
    final directory = await getApplicationSupportDirectory();
    final path = directory.path;
    final file = File('$path/hoge.txt');

    await file.create();
    await file.writeAsString(jsonString);
  }

  Future<UnfreezedEx> _readFile() async {
    final directory = await getApplicationSupportDirectory();
    final path = directory.path;
    final file = File('$path/hoge.txt');

    // ファイルがあった時だけ読み込む
    if (file.existsSync()) {
      final jsonString = await file.readAsString();
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      return UnfreezedEx.fromJson(json);
    } else {
      return UnfreezedEx();
    }
  }

  Future<void> _saveSP(String jsonString) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', jsonString);
  }

  Future<UnfreezedEx> _readSP() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('data2');
    // データが無い場合はNullで返る
    if (jsonString != null) {
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      return UnfreezedEx.fromJson(json);
    } else {
      return UnfreezedEx();
    }
  }
}
