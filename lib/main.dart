import 'package:flutter/material.dart';
import 'package:my_own_widgets/image_widgets.dart';
import 'package:my_own_widgets/my_counter_page.dart';

void main(List<String> args) {
  debugPrint('main metodu çalıştı........');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build çalıştı........');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          textTheme: TextTheme(
              headlineLarge: TextStyle(color: Colors.purple, fontSize: 22))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Imaj Ornekleri'),
        ),
        body: ImageOrnekleri(),
      ),
    );
  }
}
