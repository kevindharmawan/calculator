import 'package:flutter/material.dart';

class HobbyItem extends StatelessWidget {
  final String title;
  final String description;
  final Icon icon;

  HobbyItem(this.title, this.description, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(
        elevation: 2,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: FittedBox(
                child: icon,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
