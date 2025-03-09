import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://i0.shbdn.com/photos/75/39/82/x5_12167539820it.jpg";
    String _logoUrl =
        'https://assets.turbologo.com/blog/en/2021/11/18085359/chevy-symbol.png';
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red.shade300,
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/images/1.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.red.shade300,
            width: 200,
            height: 200,
            child: Image.network(_imgUrl),
          ),
          Container(
              color: Colors.red.shade300,
              child: CircleAvatar(
                // child: Text('E',
                //     style: Theme.of(context).textTheme.headlineMedium),
                backgroundImage: NetworkImage(_logoUrl),
                radius: 90,
              )),
        ],
      ),
    );
  }
}
