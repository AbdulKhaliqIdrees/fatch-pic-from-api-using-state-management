import 'package:flutter/material.dart';
import 'package:state_management_api_1/views/my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pictures",
      home: MyHome(),
    );
  }
}
