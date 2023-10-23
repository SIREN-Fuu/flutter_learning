// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// GlobalKey keyBottomNavigation = GlobalKey();
// GlobalKey<NavigatorState> keyTab0 = GlobalKey<NavigatorState>();
// GlobalKey<NavigatorState> keyTab1 = GlobalKey<NavigatorState>();

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Tab demo',
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => HomeScreenState();
// }

// class HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;

//   void changeTab(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         if (_currentIndex == 0 && keyTab0.currentState!.canPop()) {
//           return !await keyTab0.currentState!.maybePop();
//         } else if (_currentIndex == 1 && keyTab1.currentState!.canPop()) {
//           return !await keyTab1.currentState!.maybePop();
//         }
//         if (keyTab0.currentState!.canPop()) {
//           final CupertinoTabBar tab = keyBottomNavigation.currentWidget;
//           tab.onTap(0);
//           return Future.value(false);
//         }
//         if (keyTab1.currentState!.canPop()) {
//           final CupertinoTabBar tab = keyBottomNavigation.currentWidget;
//           tab.onTap(1);
//           return Future.value(false);
//         }
//         return Future.value(true);
//       },
//       child: CupertinoTabScaffold(
//         tabBuilder: (BuildContext context, int index) {
//           return CupertinoTabView(
//             builder: (BuildContext context) {
//               switch (index) {
//                 case 0:
//                   return Navigator(
//                     key: keyTab0,
//                     onGenerateRoute: (RouteSettings settings) {
//                       return MaterialPageRoute(
//                         settings: settings,
//                         builder: (BuildContext context) => const Page1(),
//                       );
//                     },
//                   );
//                 case 1:
//                   return Navigator(
//                     key: keyTab1,
//                     onGenerateRoute: (RouteSettings settings) {
//                       return MaterialPageRoute(
//                         settings: settings,
//                         builder: (BuildContext context) => const Page2(),
//                       );
//                     },
//                   );
//                 case 2:
//                   return const Page3();
//               }
//             },
//           );
//         },
//         tabBar: CupertinoTabBar(
//           key: keyBottomNavigation,
//           onTap: changeTab,
//           currentIndex: _currentIndex,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.bubble_chart),
//               label: 'Support',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Page1 extends StatelessWidget {
//   const Page1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Page 1'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('Page1'),
//             ElevatedButton(
//               child: const Text('Open Page1 in tab'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => const Page1(),
//                   ),
//                 );
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Open Page2 in tab'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => const Page2(),
//                   ),
//                 );
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Open in fullscreen'),
//               onPressed: () {
//                 Navigator.of(context, rootNavigator: true).push(
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => const Page1(),
//                   ),
//                 );
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Move to tab 2'),
//               onPressed: () {
//                 final CupertinoTabBar tab = keyBottomNavigation.currentWidget;
//                 tab.onTap(1);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Page2 extends StatelessWidget {
//   const Page2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Page 2'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('Page2'),
//             ElevatedButton(
//               child: const Text('Open Page1 in tab'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => const Page1(),
//                   ),
//                 );
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Open Page2 in tab'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => const Page2(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   const Page3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Page 3'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             color: Colors.blue[100],
//             padding: const EdgeInsets.symmetric(vertical: 150),
//             child: const Text('1'),
//           ),
//           Container(
//             color: Colors.blue[200],
//             padding: const EdgeInsets.symmetric(vertical: 150),
//             child: const Text('2'),
//           ),
//           Container(
//             color: Colors.blue[300],
//             padding: const EdgeInsets.symmetric(vertical: 150),
//             child: const Text('3'),
//           ),
//         ],
//       ),
//     );
//   }
// }
