import 'package:flutter/material.dart';
import 'package:project_flutter/Bakery/Menu2.dart';
import 'package:project_flutter/Bakery/Menu3.dart';
import 'package:project_flutter/Bakery/Menu4.dart';
import 'package:project_flutter/Bakery/menu1.dart';
import 'package:project_flutter/Home.dart';
import 'package:project_flutter/Ingredient/menui1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/home': (context) => HomePage(),
        '/menu1': (context) => Menu1(),
        '/menu2': (context) => Menu2(),
        '/menu3': (context) => Menu3(),
        '/menu4': (context) => Menu4(),
        '/int1': (context) => HomeScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('My Recipe'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/1.jpg',
            width: 600,
            height: 540,
            fit: BoxFit.cover,
          ),
          Text('แอพพลิเคชั่น ที่รวบรวมสูตรขนมเบเกอรี่'),
          ElevatedButton(
            child: Text(' Bakery recipe ->'),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        ],
      ),
    );
  }
}
