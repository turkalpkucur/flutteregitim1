import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
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
