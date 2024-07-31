import 'package:flutter/material.dart';
import 'package:totem/screens/faturas_screen.dart';
import 'package:totem/screens/home_screen.dart';
import 'package:totem/screens/login_screen.dart';
import 'package:totem/screens/menu_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/menu':
        return MaterialPageRoute(builder: (_) => MenuScreen());
      case '/faturas':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => FaturasScreen(cpf: args),
          );
        }
        // Retorna uma rota de erro se o CPF não for fornecido
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Rota não encontrada'),
        ),
      ),
    );
  }
}
