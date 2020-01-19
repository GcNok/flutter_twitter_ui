import 'package:flutter/material.dart';

const FONT_GRAY = const Color(0xFF8B99A5);

class FollowText extends StatelessWidget {
  const FollowText({this.boldText, this.text});

  final String boldText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(
        right: 10
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 6
            ),
            child: Text(
              this.boldText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Text(
            this.text,
            style: TextStyle(
              color: FONT_GRAY,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
