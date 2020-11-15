import 'package:flutter/material.dart';
import '../settings.dart';


class RoomTab extends StatefulWidget {
  RoomTab({this.U});
  List<user> U;
  @override
  _RoomTabState createState() => _RoomTabState(U: U);
}

class _RoomTabState extends State<RoomTab> {
  _RoomTabState({this.U});
  List<user> U;
  Column make_column({String image_name, String user_name}) =>
      Column(
        children: [
          Image.asset(image_name),
          Text(user_name,
            style:name_style,)
        ],
      );

  Container usercard({user U,double Pu}) =>
      Container(
        decoration: new BoxDecoration(
          border: Border.all(color: Colors.grey,width: 2.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 3.0,
              blurRadius: 10.0,
              offset: Offset(10, 10),
            ),
          ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.teal[100],
        shape: BoxShape.rectangle,
        ),
        child: Container(
          child: Column(
            //verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: Pu),//上からPuだけ押して画像を小さく
              Expanded(child: Container(
                //color: Colors.grey,
                  child: Image.asset(U.icon,fit: BoxFit.contain)
              )
              ),
              SizedBox(child: Text(U.name+'['+U.time+']', style: time_style),height: 30),
            ],
          ),
        )
      );

  exRow({user U0,user U1, double Pu0, double Pu1}) =>
    Expanded(child: Container(
      padding: EdgeInsets.all(10.0),
      //color: Co,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: usercard(U:U0,Pu: Pu0)),
            SizedBox(width: 10,),
            Expanded(child: usercard(U:U1,Pu: Pu1)),
          ],
          ),
    ));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        exRow(U0: U[0],U1: U[1]),
        exRow(U0: U[2],U1: U[3],Pu0: 40),
        exRow(U0: U[4],U1: U[5],Pu0: 70,Pu1: 20),
        //exRow(U0: UList[4],U1: UList[5],Co: Colors.green),
      ],
    );
  }
}