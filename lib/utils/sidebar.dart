/*  import 'package:flutter/material.dart';
import 'package:nviame/utils/cons.dart';
import 'package:nviame/utils/providers.dart';
import 'package:nviame/widgets/button_sidebar.dart';
import 'package:nviame/widgets/notificacion_sidebar.dart';
import 'package:provider/provider.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  Offset _offset = Offset(0, 0);
  GlobalKey globalKey = GlobalKey();
  List<double> limits = [];
  double screenWidth, screenHeight;
  /* bool isMenuOpen = false;
  String iconotexto = "assets/menu.svg"; */

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    double sidebarSize = mediaQuery.width * 0.65;
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
  ///PROVIDER
final providerInfo = Provider.of<ProviderInfo>(context);

    return AnimatedPositioned(
      
      duration: Duration(milliseconds: 1500),
      left: providerInfo.isMenuOpen ? 0 : -sidebarSize + 20,
      top: 0,
      curve: Curves.elasticOut,
      child: SizedBox(
        width: sidebarSize,
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.localPosition.dx <= sidebarSize) {
              setState(() {
                _offset = details.localPosition;
              });
            }

            if (details.localPosition.dx > sidebarSize - 20 &&
                details.delta.distanceSquared > 2) {
              setState(() {
                providerInfo.isMenuOpen = true;
              });

              if (providerInfo.textIcon == "assets/menu.svg") {
                providerInfo.textIcon = "assets/menuLateral.svg";
                setState(() {});
              }
            }
          },
          onPanEnd: (details) {
            setState(() {
              _offset = Offset(0, 0);
            });
          },
          child: Stack(
            children: <Widget>[
              CustomPaint(
                size: Size(sidebarSize, mediaQuery.height),
                painter: DrawerPainter(offset: _offset),
              ),
              Container(
                //color: Colors.red,
                //height: mediaQuery.height,
                width: sidebarSize,
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
                        width: 140,
                        color: Colors.grey.withOpacity(0.3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.fiber_manual_record,
                              color: Colors.green,
                              size: 20,
                            ),
                            Text(
                              "Online",
                              style: TextStyle(
                                color: Constants.colorMoradoOscuro,
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Constants.colorMoradoOscuro,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SideBarButton("assets/menu-lateral-home.svg", "Home"),

                    
                    SizedBox(
                      height: 20,
                    ),
                     SideBarButton("assets/menu-lateral-mi-perfil.svg", "Mi perfil"),
                  
                    SizedBox(
                      height: 20,
                    ),
                     SideBarButton("assets/menu-lateral-cerrar-sesion.svg", "Cerrar sesión"),
                  
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Notificaciones",
                      style: TextStyle(
                        color: Constants.colorMoradoOscuro,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    NotiSideBar("Envíos nuevos"),
                    SizedBox(
                      height: 20,
                    ),
                    NotiSideBar("Ofertas"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class DrawerPainter extends CustomPainter {
  final Offset offset;

  DrawerPainter({this.offset});

  double getControlPointX(double width) {
    if (offset.dx == 0) {
      return width;
    } else {
      return offset.dx > width ? offset.dx : width + 75;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(-size.width, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        getControlPointX(size.width), offset.dy, size.width, size.height);
    path.lineTo(-size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
  */