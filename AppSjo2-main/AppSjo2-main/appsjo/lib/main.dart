import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'paginas/paginaInicio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppSJO());
}

class AppSJO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App SJO',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: paginaInicio());
  }
}
