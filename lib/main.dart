import 'package:flutter/material.dart';
import './config/Theme.dart';
import './pages/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: '福利',
      theme: ThemeData(
          primaryColor: appColor.themeColor
      ),
      home: HomePage(title:"福利"),
    );
  }
}
