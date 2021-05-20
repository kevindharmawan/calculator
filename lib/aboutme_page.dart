import 'package:calculator/widgets/hobby_list.dart';
import 'package:calculator/widgets/social_media_item.dart';
import 'package:flutter/material.dart';

import './models/hobby.dart';

class AboutMePage extends StatelessWidget {
  static const routeName = '/aboutme';

  final List<Hobby> _hobbyList = [
    Hobby(
      title: 'Cycling',
      description: 'I have been doing this hobby since I was 1 years old',
      icon: Icon(Icons.motorcycle_outlined),
    ),
    Hobby(
      title: 'Gaming',
      description: 'Who doesn\'t like gaming?',
      icon: Icon(Icons.sports_esports),
    ),
    Hobby(
      title: 'Basketball',
      description: 'Haven\'t played this since pandemic started',
      icon: Icon(Icons.sports_basketball_outlined),
    ),
    Hobby(
      title: 'Singing',
      description: 'I love singing, but I\'m not good at it',
      icon: Icon(Icons.audiotrack),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 45,
          ),
          Container(
            width: 210,
            height: 210,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/profilepic.jpg'),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 3,
                  blurRadius: 5,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'Kevin Dharmawan',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  'Student at University of Indonesia',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 1,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'More About Me',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 3),
                Text(
                  'Nickname: Kevin',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  'Major: Computer Science',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  'Domicile: Jakarta / Bogor',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: HobbyList(_hobbyList),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Social Media',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 3),
                SocialMediaItem(
                  image: Image.asset('assets/instagram.jpg'),
                  text: 'kevindharmawan2002',
                ),
                SocialMediaItem(
                  image: Image.asset('assets/line.png'),
                  text: 'kevindharmawan07',
                ),
                SocialMediaItem(
                  image: Image.asset('assets/gmail.png'),
                  text: 'kevin.dharmawan@ui.ac.id',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
