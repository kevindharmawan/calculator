import 'package:calculator/models/hobby.dart';
import 'package:flutter/material.dart';

import './hobby_item.dart';

class HobbyList extends StatelessWidget {
  final List<Hobby> hobbyList;

  HobbyList(this.hobbyList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 3),
          Text(
            'My Hobbies',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Container(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hobbyList.length,
              itemBuilder: (context, index) {
                return HobbyItem(
                  hobbyList[index].title,
                  hobbyList[index].description,
                  hobbyList[index].icon,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
