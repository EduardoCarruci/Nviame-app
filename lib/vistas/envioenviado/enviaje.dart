import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class EnViaje extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<EnViaje> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: _textBlue("ENVÍO EN CURSO"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: _cardActivity(
                        screenWidth,
                        "Salinas Chicas 918, Bahía Blanca, ARG.",
                        "Sale ahora",
                        "Av. Corrientes 525, Capital Federal, ARG.",
                        "Antes de Mie 23 AGO 10:30 h.",
                        "PAGO MÁXIMO",
                        Constants.colorMorado,
                        "EVALÚA OFERTAS"),
                  ),
                  LinearPercentIndicator(
                    width: screenWidth *0.9850,
                    lineHeight: 4.0,
                    percent: 0.60,
                    progressColor: Constants.colorMorado,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 10.0, top: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 20,
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Estado",
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  height: 25,
                                  color: Constants.colorMorado,
                                  child: Text("EN VIAJE",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800)),
                                ),
                              ),
                              SizedBox(width:0.0),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/distancia-aproximada.svg",
                                //color: Constants.colorMorado,
                                fit: BoxFit.contain,
                                height: 20,
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Distancia total",
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Text("693 km",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 10.0, top: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/tiempo-estimado-de-viaje.svg",
                                //color: Constants.colorMorado,
                                fit: BoxFit.contain,
                                height: 20,
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Tiempo estimado de arribo",
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Text("7:30 h",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/ENVIO-EN-CURSO-precio-final.svg",
                                //color: Constants.colorMorado,
                                fit: BoxFit.contain,
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(width: 2.0,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Precio final",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Constants.colorAzulOscuro,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Text(" ! 250",
                                  style: TextStyle(
                                      color: Constants.colorAzulOscuro,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Divider(
                      color: Constants.colorGrisNuevo,
                      thickness: 1.0,
                      height: 2.0,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                    child: Text(
                      "Descripción del envío",
                      style: TextStyle(
                          color: Constants.colorAzulOscuro,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        // color: Colors.green,
                        height: 60,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                                              child: Container(
                                  // color: Colors.red,
                                  width: 60,
                                  height: 60,
                                  child: Image(
                                    image: AssetImage(
                                      "assets/camara.jpg",
                                    ),
                                    height: 60.0,
                                    width: 60.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing" +
                                    "elit. Suspendisse eget felis cursus, lobortis turpis" +
                                    "eget, eleifend lacus Aenean eu egestas ante." +
                                    "ullam felis nulla, sodales nec pharetra eu, maximus",
                                textAlign: TextAlign.left,style: TextStyle(
                                  fontSize: 13.0,
                                  //wordSpacing: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      Padding(
                    padding: EdgeInsets.only(top:10.0,left: 10.0, right: 10.0,bottom: 5.0),
                    child: Divider(
                      color: Constants.colorGrisNuevo,
                      thickness: 1.0,
                      height: 2.0,
                    ),
                  ),
                  cardPerson("Nombre del viajero"),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0),
                    child: buildButtonContainer(context, screenWidth),
                  ),
                ],
              ),
            )));
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return CupertinoButton(
      color: Color(0xFF5b4ffb),
      //minSize: 50,
      borderRadius: BorderRadius.circular(50),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FaIcon(FontAwesomeIcons.mapMarkerAlt),
          SizedBox(
            width: 5.0,
          ),
          //map-marker-alt
          Text(
            "Tracking en tiempo real",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      onPressed: () {
        print("hola");
      
      },
    );
  }

  Widget cardPerson(String nombre) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        width: screenWidth,
        height: 70,
        //color: Colors.blueGrey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    //color: Colors.red,
                    width: 60,
                    height: 60,
                    child: Image(
                      image: AssetImage("assets/men.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 2,
                  top: 2,
                  child: ClipOval(
                      child: Container(
                    color: Colors.red,
                    width: 12,
                    height: 12,
                  )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    nombre,
                    style: TextStyle(
                        color: Constants.colorMoradoOscuro,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                        height: 13,
                        width: 13,
                      ),
                      SizedBox(width: 3.0),
                      SvgPicture.asset(
                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                        height: 13,
                        width: 13,
                      ),
                      SizedBox(width: 3.0),
                      SvgPicture.asset(
                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                        height: 13,
                        width: 13,
                      ),
                      SizedBox(width: 3.0),
                      SvgPicture.asset(
                        "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                        height: 13,
                        width: 13,
                      ),
                      SizedBox(width: 3.0),
                      SvgPicture.asset(
                        "assets/OFERTAS-RECIBIDAS-estrella-gris.svg",
                        height: 13,
                        width: 13,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(width: 10.0,),
                    SvgPicture.asset(
                      "assets/OFERTA-CONFIRMADA-corazon.svg",
                      height: 25,
                      width: 25,
                    ),
                    Stack(
                      children: <Widget>[
                        //notificaciones
                        Container(
                          child: Container(
                            //color: Colors.blue,
                            width: 27,
                            height: 27,
                            child: SvgPicture.asset(
                              "assets/OFERTA-CONFIRMADA-chat.svg",
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
                    ),
                    SvgPicture.asset(
                      "assets/OFERTA-CONFIRMADA-perfil-usuario.svg",
                      height: 25,
                      width: 25,
                    ),
                     //SizedBox(width: 1.0,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textBlue(String texto) {
    return Text(
      texto,
      style: TextStyle(
          color: Constants.colorMorado,
          fontWeight: FontWeight.w600,
          fontSize: 14),
    );
  }

  Widget _cardActivity(screenWidth, String calle, String estado, String _calle,
      String _estado, String envio, Color color, String textButton) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
          width: screenWidth,
          height: 90,
          //color: Colors.blue,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 65,
                    //color: Colors.red,
                    width: 30,
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      "assets/desde-hasta-normal.svg",
                      //color: Constants.colorMorado,
                      fit: BoxFit.contain,
                      height: 55,
                      width: 75,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          calle,
                          style: TextStyle(fontSize: 13.0),
                        ),
                        Text(
                          estado,
                          style: TextStyle(
                              color: Constants.colorMorado, fontSize: 13.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          _calle,
                          style: TextStyle(fontSize: 13.0),
                        ),
                        Text(
                          _estado,
                          style: TextStyle(
                              color: Constants.colorMorado, fontSize: 13.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
