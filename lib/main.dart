import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/src/blocs/provider.bloc.dart';
import 'package:flutter_form_bloc/src/pages/home.page.dart';
import 'package:flutter_form_bloc/src/pages/login.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
      },
    ));
  }
}
