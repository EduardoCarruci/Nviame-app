import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/vistas/envioenviado/enviaje.dart';

class EstadosEnviosCreador extends StatefulWidget {
  @override
  _OfertasState createState() => _OfertasState();
}

class _OfertasState extends State<EstadosEnviosCreador> {
  TextEditingController controlador = new TextEditingController();
  double screenWidth, screenHeight;
  bool isDialog = false;
  String opcionActual = 'Seleccione el motivo';
  List<String> opciones = [
    'Seleccione el motivo',
    'Motivo1',
    'Motivo2',
    'Motivo3'
  ];

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
            
              child: Stack(
                children: <Widget>[
                  Column(
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
                                    child: Text("Tiempo estimado de viaje",style: TextStyle(fontSize: 13.0),),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text("7:30 h",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w800,fontSize: 13.0))
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
                                    child: Text("Distancia aproximada",style: TextStyle(fontSize: 13.0),),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text("693 km",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w800,fontSize: 13.0))
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
                                    child: Text("Total a apagar",style: TextStyle(fontSize: 13.0),),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text(" ! 250",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w800,fontSize: 13.0))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 5),
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
                            top: 5, left: 10, right: 10, bottom: 5),
                        child: Divider(
                          color: Constants.colorGrisNuevo,
                          thickness: 1.0,
                        ),
                      ),
                      cardPerson("Nombre del viajero"),
                      SizedBox(height: 0.0,),
                       Padding(
                        padding: EdgeInsets.only(
                            top: 5, left: 0, right: 10, bottom: 0),
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
                      
                      SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Column(
                          children: <Widget>[
                            _estados(
                                "assets/OFERTA-CONFIRMADA-circulo-violeta.svg",
                                "Pago realizado"),
                                  SizedBox(height: 5.0),
                            _estados(
                                "assets/OFERTA-CONFIRMADA-circulo-violeta.svg",
                                "Retiro del producto"),
                                  SizedBox(height: 5.0),
                            _estados(
                                "assets/OFERTA-CONFIRMADA-circulo-violeta.svg",
                                "Envío en curso"),
                                  SizedBox(height: 5.0),
                            _estados(
                                "assets/OFERTA-CONFIRMADA-circulo-violeta.svg",
                                "Entregado"),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 15.0, left: 20, right: 20),
                        child: buildButtonContainer(context, screenWidth),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 20.0,bottom: 20.0),
                        child: Text(
                          "El monto de la operación será liberado una vez que el" +
                              "envío haya sido entregado y confirmado por el usuario" +
                              "creador del envio.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize:13.0),
                        ),
                      ),
                    ],
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child:
                          isDialog ? transparentWidget(context) : Container(),
                    ),
                  ),
                ],
              ),
            ))));
  }


  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: CupertinoButton(
          //textColor: Colors.white,
          color: Constants.colorMorado,
          padding: EdgeInsets.only(
              left: screenWidth * 0.185,
              right: screenWidth * 0.185,
              top: 10,
              bottom: 10.0),
          onPressed: () {
            setState(() {
              isDialog = true;
            });
          
          },
          child: Text(
              "En espera del pago...",
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
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            picture,
            width: 10,
            height: 10,
          ),
          SizedBox(width: 5.0),
          Text(estado,style: TextStyle(fontSize: 13.0),)
        ],
      ),
    );
  }

    Widget cardPerson(String nombre) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        width: screenWidth,
        height: 60,
         //color: Colors.blueGrey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipOval(
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
                    Stack(
                      children: <Widget>[
                        //notificaciones
                        Container(
                          child: Container(
                            //color: Colors.blue,
                            width: 27,
                            height: 30,
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
                      "assets/OFERTA-CONFIRMADA-contacto-adjunto.svg",
                      height: screenHeight*0.05,
                      width: screenWidth*0.05,
                    ),
                  ],
                ),
              ),
            ),  ],
        ),
      ),
    );
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
                    padding: const EdgeInsets.only(left: 0.0, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 0),
                          child: Text(
                            "CONFIRMA RECEPCIÓN",
                            style: TextStyle(
                              color: Constants.colorAzulOscuro,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: Text(
                            "Por favor, ingrese el PIN recibido para confirmar" +
                                "que ha recibido el paquete y que está en buenas condiciones",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black54.withOpacity(0.85),
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Constants.colorAzulOscuro, width: 2),
                                borderRadius: BorderRadius.circular(50),
                              ),

                              //color: Colors.red,
                              height: 60,
                              width: screenWidth * 0.75,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("5 5 4 9 2 7 1 1",
                                      style: TextStyle(
                                          color: Constants.colorAzulOscuro,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 15),
                          child: Text(
                            "¿Hay un problema?",
                            style: TextStyle(
                              color: Constants.colorAzulOscuro,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 15, right: 15, top: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                                                          child: Container(
                                color: Constants.colorGrisNuevo,
                                height: 50,
                                width: screenWidth * 0.93,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10, top: 2),
                                  child: DropdownButtonFormField<String>(
                                    value: opcionActual,
                                    itemHeight: 50,
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white))),
                                    iconEnabledColor: Colors.blue,
                                    elevation: 1,
                                    items: opciones.map((String val) {
                                      return new DropdownMenuItem<String>(
                                        value: val,
                                        child: new Text(
                                          val,
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 13),
                                          textScaleFactor: 1.0,
                                        ),
                                      );
                                    }).toList(),
                                    hint: Text("Opcion"),
                                    onChanged: (opt) {
                                      opcionActual = opt;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 18),
                          child: Center(
                            child: buildButton(context, screenWidth),
                          ),
                        ),
                      ],
                    ),
                  ),

                  height: 345,
                  width: screenWidth * 0.85,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
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

  Widget buildButton(BuildContext context, screenWidth) {
    return Center(
      child: CupertinoButton(
        color: Color(0xFF5b4ffb),
        borderRadius: BorderRadius.circular(50),
        padding: EdgeInsets.only(
            left: screenWidth * 0.21,
            right: screenWidth * 0.21,
            top: 5,
            bottom: 5),
        child: Text(
          "No puedo entregar",
          style: TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.normal),
        ),
        onPressed: () {
          
             
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
                      Text(calle,
                      style: TextStyle(fontSize: 13.0),
                      ),
                      Text(
                        estado,
                        style: TextStyle(color: Constants.colorMorado,fontSize: 13.0),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(_calle,
                      style: TextStyle(fontSize: 13.0),
                      
                      ),
                      Text(
                        _estado,
                        style: TextStyle(color: Constants.colorMorado,fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                              child: Container(
                   // width: screenWidth * 0.22,
                   
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset(
                        "assets/ver-mapa.svg",
                        height: screenHeight * 0.04,
                        width: screenWidth * 0.04,
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
