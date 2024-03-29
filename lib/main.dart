import 'package:exam/SecScreen.dart';
import 'package:exam/ThirdSec.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.routeName
    ,routes: {HomeScreen.routeName:(context) => HomeScreen(),

     SecScreen.routeName:(context) => SecScreen(),
     ThirdSec.routeName:(context)=>ThirdSec(),

    },
    );
  }
}
