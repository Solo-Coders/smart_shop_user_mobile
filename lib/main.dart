import 'package:flutter/material.dart';
import 'package:smart_shop/pages/login_page.dart';
import 'package:smart_shop/pages/register_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Shop',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     routes: {
       '/' : (context) => const LoginPage(),
       '/home' : (context) => const HomePage(),
       '/register' : (context) => const RegisterPage(),
     }
    );
  }
}
