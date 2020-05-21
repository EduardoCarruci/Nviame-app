import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/vistas/maps/map.dart';
import 'package:nviame_app/vistas/perfil/perfil.dart';

import 'estadoAprobado.dart';

class EstadosEnvios extends StatefulWidget {
  @override
  _OfertasState createState() => _OfertasState();
}

class _OfertasState extends State<EstadosEnvios> {
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
                    child: _textBlue("OFERTAS CONFIRMADA"),
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
                                  "Tiempo estimado de viaje",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
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
                                "assets/distancia-aproximada.svg",
                                //color: Constants.colorMorado,
                                fit: BoxFit.contain,
                                height: 20,
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Distancia aproximada",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Text("693 km",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black87,
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
                              Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text("Total a apagar",
                                      style: TextStyle(
                                        fontSize: 13.0,
                                      ))),
                              Expanded(
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Text(" ! 250",
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 10),
                    child: Divider(
                      color: Constants.colorGrisNuevo,
                      thickness: 1.0,
                    ),
                  ),
                  _cardActivity(
                      screenWidth,
                      "Av. Leandro Alem 50, Bahía Blanca, AR.",
                      "Sale ahora",
                      "Av. Corrientes 1625, Capital Federal, AR.",
                      "Antes de Mie 24 DIC 10:30 h",
                      "ENVÍO ESTÁNDAR",
                      Constants.colorMorado,
                      "EVALÚA OFERTAS"),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 10),
                    child: Divider(
                      color: Constants.colorGrisNuevo,
                      thickness: 1.0,
                    ),
                  ),
                  cardPerson("Nombre del viajero"),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 10),
                    child: Divider(
                      color: Constants.colorGrisNuevo,
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "ESTADO DE LA OPERACIÓN",
                      style: TextStyle(
                        color: Constants.colorAzulOscuro,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Column(
                      children: <Widget>[
                        _estados("assets/OFERTA-CONFIRMADA-check-violeta.svg",
                            "Pago realizado"),
                        _estados("assets/OFERTA-CONFIRMADA-check-violeta.svg",
                            "Retiro del producto"),
                        _estadosNone("assets/OFERTA-CONFIRMADA-circulo-violeta.svg",
                          "Envío en curso"),
                        _estadosNone("assets/OFERTA-CONFIRMADA-circulo-violeta.svg",
                          "Entregado"),
                        _estadosNone("assets/OFERTA-CONFIRMADA-circulo-violeta.svg",
                          "Liberar pago")
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 20, right: 20),
                    child: buildButtonContainer(context, screenWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0),
                    child: Text(
                      "El monto de la operación será liberado una vez que el" +
                          "envío haya sido entregado y confirmado por Ud.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                ],
              ),
            )));
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: CupertinoButton(
          //textColor: Colors.white,
          color: Constants.colorMorado,
          padding: EdgeInsets.only(
              left: screenWidth * 0.365,
              right: screenWidth * 0.365,
              top: 10,
              bottom: 10.0),
          onPressed: () {
            Navigator.push(
            context, MaterialPageRoute(builder: (context) => EstadoAprbado()));
          },
          child: Text(
            'Pagar',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _estados(String picture, String estado) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          SvgPicture.asset(
            picture,
            width: 10,
            height: 10,
          ),
          SizedBox(width: 5.0),
          Text(estado, style: TextStyle(fontSize: 13.0)),
        ],
      ),
    );
  }

    Widget _estadosNone(String picture, String estado) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           SizedBox(width: 2.0),
          SvgPicture.asset(
            picture,
            width: 10,
            height: 10,
          ),
          SizedBox(width: 8.0),
          Text(estado, style: TextStyle(fontSize: 13.0)),
        ],
      ),
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
                GestureDetector(
                  onTap: (){
                     Navigator.push(
            context, MaterialPageRoute(builder: (context) => Perfil())); 
                  },
                                  child: ClipOval(
                    child: Container(
                      //color: Colors.red,
                      width: 55,
                      height: 55,
                      child: Image(
                        image: AssetImage("assets/men.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 2,
                  top: 10,
                  child: ClipOval(child: Container(color: Colors.red,width: 12,height: 12,)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //Expanded(child: Container(),),
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
                    GestureDetector(
                      onTap: (){
                         Navigator.push(
            context, MaterialPageRoute(builder: (context) => Perfil())); 
                      },
                                          child: SvgPicture.asset(
                        "assets/OFERTA-CONFIRMADA-perfil-usuario.svg",
                        height: 25,
                        width: 25,
                      ),
                    ),
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
    return Container(
      margin: EdgeInsets.only(left: 10, right: 15),
      width: screenWidth,
      height: 85,
      //color: Colors.green,
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 60,
                //color: Colors.red,
                width: 15,
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(
                  "assets/desde-hasta-normal.svg",
                  //color: Constants.colorMorado,
                  fit: BoxFit.contain,
                  height: 55,
                  width: 75,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
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
              ),
              Expanded(
                child: Container(
                    //width: screenWidth * 0.15,
                    /* height: 20.0,
                    width: 20, */
                    //color: Colors.red,
                    child: Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: (){
                       Navigator.push(
            context, MaterialPageRoute(builder: (context) => MapOferta())); 
                    },
                                      child: SvgPicture.asset(
                      "assets/ver-mapa.svg",
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.04,
                    ),
                  ),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
