import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'JustNow_tab.dart';
import 'History_tab.dart';
import '../settings.dart';

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  int _selectedIndex = 0;
  //フッタータブでRoomPageとTimelinetabを切り替え
  static List<Widget> _pageList = [
    RoomTab(U: UList),
    TimelineTab(),
  ];
  //タブでの切り替え操作
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Room#51'),
          backgroundColor: ABColor,
          actions: <Widget>[
            //共有アイコン、pluginを使用
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share("#51");
              },
            )
          ]),
      backgroundColor: BGColor,
      body: _pageList[_selectedIndex],
      //フッタータブ
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            title: Text('Just Now'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restore),
            title: Text('History'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
