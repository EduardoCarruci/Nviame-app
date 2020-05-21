



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nviame_app/utils/cons.dart';


class NotiSideBar extends StatefulWidget {
   String texto;
  

  NotiSideBar(this.texto);


  @override
  _NotiSideBarState createState() => _NotiSideBarState();
}

class _NotiSideBarState extends State<NotiSideBar> {
  @override
  Widget build(BuildContext context) {
        bool isSwitched = true;
    return Container(
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Text(
            widget.texto,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(child: Container(),),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              activeColor: Constants.colorMorado,
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ),
          SizedBox(width: 40.0,),
        ],
      ),
    );
  }
}