import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('homepage build çalıştı........');
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('sayaç app')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyNewTextWidget(),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.displayLarge),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('butona tıklandı........');
            sayaciArttir();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      ///o widget in state sini yeniler....
    });
    _sayac++;
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('butona basılma miktarı', style: TextStyle(fontSize: 24));
  }
}
