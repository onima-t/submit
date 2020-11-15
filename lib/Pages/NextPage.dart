import 'package:flutter/material.dart';
import 'RoomPage.dart';
import '../settings.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  // ユーザーアイコンを作成する関数
  Container make_icons(String asset_name) => Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          color: Colors.teal[100],
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.scaleDown,
            image: AssetImage(asset_name),
          ),
          border: Border.all(width: 20, color: BGColor)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColor,
      appBar: AppBar(
          backgroundColor: ABColor,
          title: Text(
            'プロフィール',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          //右上「参加」ボタン　「./RoomPage.dart」へ移動
          actions: <Widget>[
            RaisedButton(
              child: Text(
                '参加',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              color: ABColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoomPage()),
                );
              },
            )
          ]),
      body: Center(
        child: Column(
          children: [
            // ユーザーアイコンリスト
            SizedBox(
              height: 300.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                //　初期値を中心にするための空Container
                Container(
                  width: 110.0,
                  height: 200.0,
                ),
                // 顔なしユーザーアイコン
                Center(
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      // 人型アイコン
                      Container(
                        width: 200,
                        height: 200,
                        child: Icon(
                          Icons.account_circle,
                          size: 200,
                          color: Colors.teal[100],
                        ),
                      ),
                      // 右下カメラアイコン
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.photo_camera,
                          color: Colors.grey,
                        ),
                      ),
                    ]),
                  ),
                ),
                make_icons('images/dog.png'),
                make_icons('images/cat.png'),
                make_icons('images/clown-fish.png'),
                //スクロール位置調整のための空Container
                Container(
                  width: 100.0,
                  height: 200.0,
                ),
              ]),
            ),
            //名前入力テキストフィールド
            SizedBox(
              width: 200,
              child: TextField(
                enabled: true,
                autofocus: true,
                // 入力数
                maxLengthEnforced: false,
                style: TextStyle(color: Colors.black),
                obscureText: false,
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: 'ニックネームを入力',
                    hintStyle: TextStyle(color: Colors.teal)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'このルームで共有する名前を入力できます',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
