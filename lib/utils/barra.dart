import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/providers.dart';
import 'package:nviame_app/widgets/prueba.dart';

import 'package:provider/provider.dart';

class CustomBar extends StatefulWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const CustomBar({Key key, this.appBar}) : super(key: key);

  @override
  _BarraState createState() => _BarraState();

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}

class _BarraState extends State<CustomBar> {
  /*  bool isMenuOpen = false;
 

  String iconotexto = "assets/menu.svg"; */
  bool isSwitched = true;

  @override
  AppBar build(BuildContext context) {
    final providerInfo = Provider.of<ProviderInfo>(context);

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleSpacing: 5,
      title: Row(
        children: <Widget>[
          Text(
            "Hola, ",
            style: TextStyle(color: Constants.colorGris, fontSize: 16),
          ),
          Text(
            "Juan.",
            style: TextStyle(
                color: Constants.colorMorado,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
        ],
      ),
      leading: GestureDetector(
        onTap: () {
          //providerInfo.isMenuOpen = false;
          print("DRAWER ABRIENDO");
          Scaffold.of(context).openDrawer();
          //providerInfo.textIcon = "assets/menu.svg";
          //providerInfo.textIcon= "hola";
          
          this.setState(() {});
        },
        child: Container(
          margin: EdgeInsets.all(13),
          child: SvgPicture.asset(
            providerInfo.textIcon,
            color: Constants.colorMorado,
            fit: BoxFit.contain,
          ),
        ),
      ),
      actions: <Widget>[
        Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Slideshow()));
                    },
                    child: Stack(
                      children: <Widget>[
                        //notificaciones
                        Container(
                          child: Container(
                            //color: Colors.blue,
                            width: 29,
                            height: 30,
                            child: SvgPicture.asset(
                              "assets/notificaciones.svg",
                              color: Constants.colorMorado,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              color: Colors.red,
                              alignment: Alignment.center,
                              width: 18,
                              height: 18,
                              child: Text(
                                "2",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))),
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                    onTap: () {},
                    child: Stack(
                      children: <Widget>[
                        //notificaciones
                        Container(
                          width: 50,
                          height: 30,
                          //  color: Colors.blue,

                          child: Container(
                            width: 40,
                            height: 30,
                            // color: Colors.yellow,
                            child: SvgPicture.asset(
                              "assets/chat.svg",
                              color: Constants.colorMorado,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            //color: Colors.green,
                            width: 18,
                            height: 18,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.red,
                                width: 18,
                                height: 18,
                                child: Text(
                                  "2",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))),
          ],
        ),
      ],
    );
  }
}
