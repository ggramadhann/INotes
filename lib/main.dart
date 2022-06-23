import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inote/view/screens/screens.dart';

void main() => runApp(INoteApp());

class INoteApp extends StatelessWidget {
  const INoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for remove ui overlay
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'INote',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
