import 'package:flutter/material.dart';

class ItemImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Image.network('https://i0.wp.com/panchoblog.club/storage/2019/01/Jhon-Wick-chapter-two-en-netflix-pacto-de-sangre.jpg', fit: BoxFit.cover, width: 110.0,),
        SizedBox(width: 10.0,)
      ]
    );
  }
}
