import 'package:flutter/material.dart';
import 'NextPage.dart';
import '../settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColor,
      body: Center(
        child: ChangeForm(),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  Widget build(BuildContext context) {
    return SafeArea(
      // ルーム番号入力Container
      child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                  border: Border.all(color: ABColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  // ルーム番号入力テキストフィールド
                  title: new TextField(
                    enabled: true,
                    maxLengthEnforced: false,
                    style: TextStyle(
                        color: ABColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    obscureText: false,
                    maxLines: 1,

                    // focus時の動作
                    decoration: const InputDecoration(
                        hintText: '番号を入力',
                        hintStyle: TextStyle(fontSize: 20, color: Colors.teal),
                        labelText: 'ルームへ入室',
                        labelStyle:
                        TextStyle(fontSize: 20, color: Colors.teal)),
                  ),

                  //　ログインボタン「./NextPage.dart」へ移動
                  trailing: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.teal,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NextPage()),
                        );
                      },
                      icon: Icon(
                        Icons.login,
                        color: BGColor,
                      ),
                    ),
                  ),
                ),
              ),

              // 「Create New Room」ボタン「./NextPage.dart」へ移動
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // 追加アイコンボタン
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NextPage()),
                        );
                      },
                      icon: Icon(
                        Icons.add_circle,
                        color: ABColor,
                        size: 70,
                      ),
                    ),
                  ),
                  // text[Create New Room]
                  Text(
                    'Create New Room',
                    style: TextStyle(
                      color: ABColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              // ランダムルーム入室ボタン「./NextPage.dart」へ移動
              RaisedButton(
                child: const Text('ランダムルームに\n入室する',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                color: Colors.brown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage()),
                  );
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '＊自動的に相手を選んで勉強するモードです',
                style: TextStyle(
                  color: ABColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
      ),
    );
  }
}
