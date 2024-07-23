import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ValueChanged Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

/// ページ
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ValueChanged',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      // body: _List(),
      body: _Body(),
    );
  }
}

/// body
class _Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  /// フードリスト
  final foods = [
    '寿司',
    'ラーメン',
    'カレー',
    '焼肉',
    'ハンバーグ',
  ];

  String selectedFood = '食べ物を選択して下さい';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) =>
                FoodListItem(
              title: foods[index],
              onTapMethod: (title) => setState(
                () => selectedFood = title,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(selectedFood),
        const SizedBox(height: 80),
      ],
    );
  }
}

// 食べ物のリストアイテム
class FoodListItem extends StatelessWidget {
  const FoodListItem({
    super.key,
    required this.title,
    required this.onTapMethod,
  });

  final String title;
  final ValueChanged<String> onTapMethod;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        // タップされた食べ物の名前を返す
        onTap: () => onTapMethod(title),
        child: Container(
          height: 65,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
