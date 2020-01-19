import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  final String imgName;
  final String text;
  final Color color;

  const ImageAndText({this.imgName, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 6
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 6
            ),
            child: Image(
              image: AssetImage("assets/img/" + this.imgName),
            ),
          ),
          Text(this.text, style: TextStyle(color: this.color))
        ],
      )
    );
  }
}
