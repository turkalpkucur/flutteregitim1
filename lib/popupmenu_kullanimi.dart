import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({super.key});

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = 'Ankara';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: PopupMenuButton<String>(
            onSelected: (String sehir) {
              print('secilen sehir: $sehir');

              setState(() {
                _secilenSehir = sehir;
              });
            },
            child: Text(_secilenSehir),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem(child: Text('Bursa'), value: 'Bursa'),
                PopupMenuItem(child: Text('Manisa'), value: 'Manisa'),
                PopupMenuItem(child: Text('Izmir'), value: 'Izmir'),
              ];
            }));
  }
}
