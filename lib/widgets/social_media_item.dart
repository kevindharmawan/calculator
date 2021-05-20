import 'package:flutter/material.dart';

class SocialMediaItem extends StatelessWidget {
  final Image image;
  final String text;

  SocialMediaItem({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: <Widget>[
          Container(
            height: 25,
            width: 25,
            child: FittedBox(
              child: image,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
