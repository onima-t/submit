import 'package:flutter/material.dart';

Color ABColor = Colors.teal[600] ;
Color BGColor = Colors.teal[50];

TextStyle name_style = TextStyle(fontSize: 15);
TextStyle time_style = TextStyle(fontFamily: 'IBMPlexMono',fontSize: 20, fontWeight: FontWeight.bold);

class user{
  user({this.name,this.icon,this.time,this.yaruki});

  String name;
  String icon;
  int yaruki;
  String time;
}

List<user> UList = [
  user(name: 'Aさん',icon: 'images/twitter.png', time: '0:53'),
  user(name: 'Bさん',icon: 'images/fire_small.png', time: '1:38'),
  user(name: 'Cさん',icon: 'images/fire_small.png', time: '1:00'),
  user(name: 'Dさん',icon: 'images/monst.png', time: '0:30'),
  user(name: 'Eさん',icon: 'images/fire_big.png', time: '0:15'),
  user(name: 'Fさん',icon: 'images/fire_small.png', time: '1:20'),
];