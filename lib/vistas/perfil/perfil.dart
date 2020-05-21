import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';


class Perfil extends StatefulWidget {
  @override
  _FormPerfilState createState() => _FormPerfilState();
}

class _FormPerfilState extends State<Perfil> {
  TextEditingController controlador = new TextEditingController();
  double screenWidth, screenHeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return SafeArea(
        child: Scaffold(
            appBar: CustomBar(
              appBar: AppBar(),
            ),
            drawer: CustomDrawer(),
            body: SingleChildScrollView(
                child: Container(
              width: screenWidth,
              height: screenHeight * 0.90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: screenWidth * 0.30,
                          //color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                        height: 15,
                                        width: 15,
                                      ),
                                      SvgPicture.asset(
                                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                        height: 15,
                                        width: 15,
                                      ),
                                      SvgPicture.asset(
                                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                        height: 15,
                                        width: 15,
                                      ),
                                      SvgPicture.asset(
                                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                        height: 15,
                                        width: 15,
                                      ),
                                      SvgPicture.asset(
                                        "assets/OFERTAS-RECIBIDAS-estrella-gris.svg",
                                        height: 15,
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "4.7",
                                style: TextStyle(
                                    color: Constants.colorAzulOscuro,
                                    fontSize: 45.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Matias Lopez",
                                style: TextStyle(
                                    color: Constants.colorAzulOscuro,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  "Visitador Médico, 34 años.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            //color: Colors.green,
                            height: 300,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "12",
                                          style: TextStyle(
                                              color: Constants.colorMorado,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Text("Entregas",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 25.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "5",
                                          style: TextStyle(
                                              color: Constants.colorMorado,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Text("Envíos",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 250,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0,
                                          top: 15,
                                          bottom: 15,
                                          right: 15),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Swiper(
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return new Image(
                                              image:
                                                  AssetImage("assets/men.jpg"),
                                              fit: BoxFit.cover,
                                              width: screenWidth * 0.95,
                                            );
                                          },
                                          itemCount: 1,
                                          itemWidth: 300.0,
                                          itemHeight: 400.0,
                                          autoplay: true, //automovimiento
                                          scrollDirection: Axis.horizontal,
                                          pagination: new SwiperPagination(),
                                          layout: SwiperLayout.DEFAULT,
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/PERFIL-USUARIO-usuario-verificado.svg",
                        height: 20,
                        width: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              color: Constants.colorAzulOscuro,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          text: "Matias Lopez ",
                          children: <TextSpan>[
                            TextSpan(
                              text: 'es un',
                              style: TextStyle(
                                  color: Colors.black38.withOpacity(0.50),
                                  fontWeight: FontWeight.normal),
                            ),
                            TextSpan(
                                text: ' usuario verificado',
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.65),
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      //Matias Lopez es un usuario verificado.
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: buildButtonContainer(context, screenWidth),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 40.0),
                      child: Center(
                          child: Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                                                  child: SvgPicture.asset(
                            "assets/menuLateral.svg",
                            height:10.0,
                            width: 10.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ))));
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return CupertinoButton(
      color: Color(0xFF5b4ffb),
      //minSize: 50,
      borderRadius: BorderRadius.circular(50),
      padding: EdgeInsets.only(
          left: screenWidth * 0.28,
          right: screenWidth * 0.28,
          top: 20,
          bottom: 20),
      child: Text(
        "Ver calificaciones",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        
      },
    );
  }
/*    
 */
}
