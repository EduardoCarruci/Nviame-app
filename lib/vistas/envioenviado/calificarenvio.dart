import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

class CalificarEnvio extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<CalificarEnvio> {
  TextEditingController descripcion = new TextEditingController();
  double screenWidth, screenHeight;
  bool isDialog = false;

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
                child: Stack(
              children: <Widget>[
                Container(
                  //height: screenHeight * 0.90,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                    child: Center(
                      child: LinearPercentIndicator(
                        width: screenWidth *0.9850,
                        lineHeight: 4.0,
                        percent: 0.60,
                        progressColor: Constants.colorMorado,
                      ),
                    ),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10.0, top: 10.0),
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
                                      color: Constants.colorVerde,
                                      child: Text("ENTREGADO",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800)),
                                    ),
                                  ),
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
                                          fontSize: 13.0,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w800))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10.0, top: 10.0),
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
                                    child: Text("Tiempo estimado de arribo",
                                        style: TextStyle(fontSize: 13.0)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text("7:30 h",
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
                                          fontSize: 13.0,
                                          color: Constants.colorAzulOscuro,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 5.0, left: 10.0, right: 10.0, bottom: 0.0),
                        child: Divider(
                          color: Constants.colorGrisNuevo,
                          thickness: 1.0,
                          height: 2.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10.0, top: 10.0, bottom: 10.0),
                        child: Text(
                          "Descripción del envío",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Constants.colorAzulOscuro,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
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
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      //wordSpacing: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, left: 10.0, right: 10.0, bottom: 5.0),
                        child: Divider(
                          color: Constants.colorGrisNuevo,
                          thickness: 1.0,
                          height: 2.0,
                        ),
                      ),
                      cardPerson("Nombre del viajero"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 20.0,top: 20.0),
                        child: Center(
                            child: buildButtonContainer(context, screenWidth)),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: isDialog ? transparentWidget(context) : Container(),
                  ),
                ),
              ],
            ))));
  }

  Widget transparentWidget(BuildContext context) {
    return Container(
      color: Constants.colorAzulOscuro.withOpacity(0.75),
      width: double.infinity,
      height: double.infinity,
      child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(15.0),
                        topRight: const Radius.circular(15.0),
                        bottomLeft: const Radius.circular(15.0),
                        bottomRight: const Radius.circular(15.0),
                      )),

                  //ACA DEBERIA MI CODIGO
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 10),
                          child: Text("Escribí un comentario",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Constants.colorMoradoOscuro,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 15.0, top: 5, right: 15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                                                      child: Container(
                              color: Constants.colorGrisNuevo,
                              height: 150,
                              width: screenWidth * 0.90,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: textarea("", descripcion, null),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              CupertinoButton(
                                  padding:
                                      EdgeInsets.only(left: 0.0, right: 0.0),
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                    height: 30.0,
                                    width: 30.0,
                                  )),
                              CupertinoButton(
                                  padding:
                                      EdgeInsets.only(left: 0.0, right: 0.0),
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                    height: 30.0,
                                    width: 30.0,
                                  )),
                              CupertinoButton(
                                  padding:
                                      EdgeInsets.only(left: 0.0, right: 0.0),
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                    height: 30.0,
                                    width: 30.0,
                                  )),
                              CupertinoButton(
                                  padding:
                                      EdgeInsets.only(left: 0.0, right: 0.0),
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                    height: 30.0,
                                    width: 30.0,
                                  )),
                              CupertinoButton(
                                  padding:
                                      EdgeInsets.only(left: 0.0, right: 0.0),
                                  onPressed: () {},
                                  child: SvgPicture.asset(
                                    "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                                    height: 30.0,
                                    width: 30.0,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          child: Center(
                            child: buildButton(context, screenWidth),
                          ),
                        ),
                      ],
                    ),
                  ),

                  height: 335,
                  width: MediaQuery.of(context).size.width * 0.85,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
                      descripcion.text = "";
                      setState(() {
                        isDialog = false;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/MI-BILLETERA-cerrar-mercado-pago.svg",
                      //color: Constants.colorMorado,
                      fit: BoxFit.contain,
                      height: 25,
                      width: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return CupertinoButton(
      color: Color(0xFF5b4ffb),
      //minSize: 50,
      borderRadius: BorderRadius.circular(50),
      padding: EdgeInsets.only(top: 12, bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Calificar envío",
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
        setState(() {
          isDialog = true;
        });
        
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
                    SizedBox(
                      width: 10.0,
                    ),
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

  Widget textarea(
      String hintText, TextEditingController controlador, Icon icono) {
    return TextField(
      decoration: InputDecoration.collapsed(hintText: ""),
      /* obscureText: hintText == "Contraseña" ? _isHidden : false, */
      keyboardType: TextInputType.text,
      maxLines: 6,
      controller: controlador,
      //textInputAction: TextInputAction.next,
      cursorColor: Colors.deepPurple,

      onChanged: (va) {},

      // focusNode: _local,
    );
  }

  Widget buildButton(BuildContext context, screenWidth) {
    return Center(
      child: CupertinoButton(
        color: Color(0xFF5b4ffb),
        borderRadius: BorderRadius.circular(50),
        padding: EdgeInsets.only(
            left: screenWidth * 0.20,
            right: screenWidth * 0.20,
            top: 5,
            bottom: 5),
        child: Text(
          "Enviar calificación",
          style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.normal),
        ),
        onPressed: () {
          /*   Navigator.push(
              context, MaterialPageRoute(builder: (context) => EnViaje()));  */
        },
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
                        Text(calle),
                        Text(
                          estado,
                          style: TextStyle(color: Constants.colorMorado),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(_calle),
                        Text(
                          _estado,
                          style: TextStyle(color: Constants.colorMorado),
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
