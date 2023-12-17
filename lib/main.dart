import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/Controllers/family_controller.dart';
import 'package:test_project/Model/family_model.dart';
import 'package:test_project/Model/login_model.dart';
import 'package:test_project/Views/UI/add_family_screen.dart';
import 'package:test_project/Views/UI/login_screen.dart';
import 'package:test_project/Views/UI/main_screen.dart';
import 'package:test_project/Views/UI/profile_screen.dart';

import 'Controllers/login_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  LoginModel loginModel = LoginModel();
  FamilyModel familyModel = FamilyModel();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider(loginModel)),
        ChangeNotifierProvider(create: (_) => FamilyProvider(familyModel)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tixer Tech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
