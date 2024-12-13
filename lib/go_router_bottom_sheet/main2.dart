import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() async {
  runApp(ProviderScope(child: MyApp()));
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    navigatorKey: rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const HomePage();
        },
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Open Login Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (context) {
                return const LoginParent();
              },
            );
          },
        ),
      ),
    );
  }
}

class LoginParent extends StatelessWidget {
  const LoginParent({super.key});

  static final GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>();

  void pushRegister() {
    shellNavigatorKey.currentState!.pushNamed('/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: shellNavigatorKey,
        // initialRoute: '/login',
        // onPopPage: (route, result) => false,
        pages: [
          const MaterialPage(
            child: RegisterScreen(),
          ),
          MaterialPage(
            child: LoginScreen(pushRegister: pushRegister),
          ),
        ],
        onGenerateRoute: _onGenerateRoute,
      ),
    );
  }

  Route<void> _onGenerateRoute(RouteSettings settings) {
    late Widget page;
    switch (settings.name) {
      case '/login':
        page = LoginScreen(pushRegister: pushRegister);

      case '/register':
        page = const RegisterScreen();
    }
    return MaterialPageRoute<void>(
      builder: (context) {
        return page;
      },
      settings: settings,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.pushRegister});
  final VoidCallback pushRegister;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Center(
        child: TextButton(
          onPressed: pushRegister,
          child: const Text('Push Register Screen'),
        ),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register Screen')),
      body: const Center(
        child: Text('Register Screen'),
      ),
    );
  }
}
