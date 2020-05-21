import 'package:flutter/material.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/vistas/home/home.dart';
import 'package:nviame_app/vistas/perfil/formperfil.dart';

import 'package:flutter_svg/flutter_svg.dart';


class SideBarButton extends StatefulWidget {
  String texto;
  String icono;
  double width;
  double espacio;
  SideBarButton(this.icono, this.texto,this.width,this.espacio);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<SideBarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.texto == "Mi perfil") {
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => FomrPerfil()));
        }

        if (widget.texto == "Home") {
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        }
      },
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: widget.espacio,
          ),
          SvgPicture.asset(
            widget.icono,
            color: Constants.colorMorado,
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: widget.width,
          ),
          Text(
            widget.texto,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
