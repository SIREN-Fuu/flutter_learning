import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //このウィジェットはアプリケーションのルートです。
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //setState への呼び出しは、Flutter フレームワークに何かが存在することを伝えます。
      //この状態で変更されたため、以下のビルド メソッドが再実行されます
      //更新された値を表示に反映できるようにします。もし私たちが変わったら
      //setState() を呼び出さずに _counter を実行すると、ビルド メソッドは実行されません。
      //再度呼び出されたため、何も起こっていないように見えます。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //このメソッドは、setState が呼び出されるたびに (たとえば、done として) 再実行されます。
    //上記の _incrementCounter メソッドによる。
    //
    //Flutter フレームワークは、ビルド メソッドを再実行できるように最適化されています。
    //高速なので、更新が必要なものを再構築するだけで済みます
    //ウィジェットのインスタンスを個別に変更する必要がなくなります。
    return Scaffold(
      appBar: AppBar(
        //これを試してください: ここの色を特定の色に変更してみてください (
        //Colors.amber かな?) ホットリロードをトリガーして AppBar を表示します
        //他の色はそのままで色を変更します。
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //ここでは、によって作成された MyHomePage オブジェクトから値を取得します。
        //App.build メソッドを使用し、アプリバーのタイトルを設定します。
        title: Text(widget.title),
      ),
      body: Center(
        //中央はレイアウト ウィジェットです。子を 1 つ取り、それを配置します
        //親の真ん中。
        child: Column(
          //列もレイアウト ウィジェットです。子供のリストが必要です。
          //縦に並べます。デフォルトでは、サイズに合わせてサイズが調整されます。
          //子を水平に配置し、親と同じ高さにしようとします。
          //
          //列には、列自体のサイズを制御するためのさまざまなプロパティがあり、
          //子をどのように配置するか。ここでは mainAxisAlignment を使用して、
          //子を垂直方向の中央に配置します。ここでの主軸は垂直方向です
          //列が垂直であるため軸 (交差軸は
          //水平）。
          //
          //これを試してください: 「デバッグ ペイント」を呼び出します (「デバッグ ペイントの切り替え」を選択します)
          //IDE でアクションを実行するか、コンソールで「p」を押して、
          //各ウィジェットのワイヤーフレーム。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
