import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/widgets/button_sidebar.dart';
import 'package:nviame_app/widgets/notificacion_sidebar.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 40,
                width: 160,
                color: Colors.grey.withOpacity(0.3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.fiber_manual_record,
                      color: Constants.colorVerde,
                      size: 20,
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                        color: Constants.colorAzulOscuro,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Constants.colorAzulOscuro,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SideBarButton("assets/menu-lateral-home.svg", "Home", 15, 17),
            SizedBox(
              height: 20,
            ),
            SideBarButton(
                "assets/menu-lateral-mi-perfil.svg", "Mi perfil", 18, 20),
            SizedBox(
              height: 20,
            ),
            SideBarButton("assets/menu-lateral-cerrar-sesion.svg",
                "Cerrar sesión", 18, 20),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Notificaciones",
                  style: TextStyle(
                    color: Constants.colorAzulOscuro,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NotiSideBar("Envíos nuevos"),
            SizedBox(
              height: 0,
            ),
            NotiSideBar("Ofertas"),
          ],
        ),
      ),
    );
  }
/* 
  Widget notifysiderbar(String icono,String texto){
    return Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            icono,
            color: Constants.colorMorado,
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            .texto,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          ),
        ],
      );
  } */
}
