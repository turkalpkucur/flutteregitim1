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
          IntrinsicHeight(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.asset(
                      'assets/images/1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.red.shade300,
                  child: Image.network(_imgUrl),
                )),
                Expanded(
                    child: Container(
                        color: Colors.red.shade300,
                        child: CircleAvatar(
                          // child: Text('E',
                          //     style: Theme.of(context).textTheme.headlineMedium),
                          backgroundImage: NetworkImage(_logoUrl),
                        )))
              ])),
          FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif', image: _imgUrl)
        ],
      ),
    );
  }
}
