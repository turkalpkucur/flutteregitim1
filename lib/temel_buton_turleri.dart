import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('textButton'),
        ),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Text Button with Icon')),
        ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Elevated with Icon')),
        OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Elevated with icon'))
      ],
    );
  }
}
