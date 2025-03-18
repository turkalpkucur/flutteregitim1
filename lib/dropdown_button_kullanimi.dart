import 'package:flutter/material.dart';

class DropdownButtonKullanimi extends StatefulWidget {
  const DropdownButtonKullanimi({super.key});

  @override
  State<DropdownButtonKullanimi> createState() =>
      _DropdownButtonKullanimiState();
}

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = ["Ankara", "Bursa", "Istanbul", "Adıyaman"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("şehir seç....."),
        // items: [
        //   DropdownMenuItem(child: Text("ankara sehri"), value: 'Ankara'),
        //   DropdownMenuItem(child: Text("istanbul sehri"), value: 'Istanbul'),
        //   DropdownMenuItem(child: Text("izmir sehri"), value: 'Izmir'),
        // ],
        items: _tumSehirler
            .map((String x) => DropdownMenuItem(child: Text(x), value: x))
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            print("calisti $yeni");
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
