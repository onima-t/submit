import 'package:flutter/material.dart';
import '../settings.dart';

class TimelineTab extends StatefulWidget {
  @override
  _TimelineTabState createState() => _TimelineTabState();
}

class _TimelineTabState extends State<TimelineTab> {
  //投稿生成関数
  Container make_post(
      {String icon_name, String user_name, String time, String app_name}) =>
      Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: [
            //投稿ユーザー情報を含むContainer
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //ユーザーのアイコン画像を含むContainer
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: AssetImage(icon_name),
                      ),
                    ),
                  ),
                  //ユーザー名
                  Text(
                    user_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  //投稿時間
                  Text(
                    time,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            //区切り線
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            //アプリのアイコン画像を含むContainer
            Container(height: 200, width: 200, child: Image.asset(app_name)),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    //投稿のリスト
    var list = [
      make_post(
          icon_name: 'images/dog.png',
          user_name: 'Aさん',
          time: '17:53',
          app_name: 'images/twitter.png'),
      make_post(
          icon_name: 'images/cat.png',
          user_name: 'Bさん',
          time: '17:45',
          app_name: 'images/monst.png'),
      make_post(
          icon_name: 'images/clown-fish.png',
          user_name: 'Cさん',
          time: '17:30',
          app_name: 'images/chrome.png'),
      make_post(
          icon_name: 'images/cat.png',
          user_name: 'Bさん',
          time: '16:54',
          app_name: 'images/sinken.png'),
    ];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //投稿の一覧を表示する
          Expanded(
            flex: 1,
            child: Scrollbar(
              child: ListView.separated(
                padding: EdgeInsets.all(50),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return list[index];
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 20,
                    color: BGColor,
                  );
                },
                itemCount: list.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
