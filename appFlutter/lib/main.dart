import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MainPage extends StatefulWidget {
  const ({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}