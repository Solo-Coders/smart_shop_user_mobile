import 'package:flutter/material.dart';
import 'package:smart_shop/pages/login_page.dart';
import 'package:smart_shop/pages/register_page.dart';
import 'package:smart_shop/services/shared_service.dart';

import 'pages/home_page.dart';

Widget _defaultHome = const LoginPage();

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  bool _result = await SharedService.isLoggedIn();
  if(_result) {
    _defaultHome = const HomePage();
  }

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
       '/' : (context) => _defaultHome,
       '/home' : (context) => const HomePage(),
       '/register' : (context) => const RegisterPage(),
     }
    );
  }
}
