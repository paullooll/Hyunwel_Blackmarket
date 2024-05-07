// ignore_for_file: depend_on_referenced_packages

import 'package:app_dev/services/auth/auth_check.dart';
import 'package:app_dev/firebase_options.dart';
import 'package:app_dev/models/martketplace.dart';
import 'package:app_dev/themes/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      ChangeNotifierProvider(create: (context) => Marketplace()),
    ],
    child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthCheck(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
