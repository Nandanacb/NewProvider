import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/todoprovider.dart';
import 'package:todoprovider/todoscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TextAddProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Todoscreen(),
      ),
    );
  }
}
      