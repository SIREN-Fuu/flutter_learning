import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: StarTogglePage(),
    );
  }
}

class StarTogglePage extends StatefulWidget {
  const StarTogglePage({super.key});

  @override
  _StarTogglePageState createState() => _StarTogglePageState();
}

class _StarTogglePageState extends State<StarTogglePage> {
  bool _isStarVisible = true;

  void _toggleStar() {
    setState(() {
      _isStarVisible = !_isStarVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Toggle'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Visibility(
              visible: _isStarVisible,
              maintainSize: true, // これにより、星のスペースが保持されます
              maintainAnimation: true,
              maintainState: true,
              child: const Icon(
                Icons.star,
                size: 50,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleStar,
              child: Text(_isStarVisible ? 'Hide Star' : 'Show Star'),
            ),
          ],
        ),
      ),
    );
  }
}
