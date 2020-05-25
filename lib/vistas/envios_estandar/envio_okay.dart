import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';

import 'package:nviame_app/vistas/ofertas/ofertas_urgentes.dart';

class FormOkay extends StatefulWidget {
  @override
  _EnvioEstandarState createState() => _EnvioEstandarState();
}

class _EnvioEstandarState extends State<FormOkay> {
  double screenWidth, screenHeight;
  TextEditingController _textEditingController = new TextEditingController();
  @override
  void initState() {
    _textEditingController.text = "hola";
    super.initState();
  }

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
              Container(
                height: 60,
                //color: Colors.red,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "¡Listo!",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Constants.colorMorado,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 2),
                      child: Text(
                        "Has creado un envío.",
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Constants.colorMorado,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.blue,
                height: 80,
                width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 40, top: 0),
                      child: Text(
                        "Envíe este PIN a la persona encargada de recibir el paquete, con el fin de verificar la recepción de mismo.",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("5 5 4 9 2 7 1 1",
                                    style: TextStyle(
                                        color: Constants.colorAzulOscuro,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                                SvgPicture.asset(
                                  "assets/ENVIO-ESTANDAR-copiar-PIN.svg",
                                  height: 30,
                                  width: 30,
                                  color: Constants.colorAzulOscuro,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: screenHeight * 0.05,
                width: double.infinity,
                // color: Colors.pink,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Comparta el PIN a quién recibirá su envío.",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Constants.colorMorado,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      //color: Colors.red,
                      height: 60,
                      width: screenWidth * 0.80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/ENVIO-ESTANDAR-compartir-whatsapp.svg",
                            height: 50,
                            width: 50,
                            color: Constants.colorVerde,
                          ),
                          Text("Compartir por Whatsapp",
                              style: TextStyle(
                                  color: Constants.colorVerde,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //color: Colors.blue,
                height: 60,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                      child: Text(
                        "El ingreso del PIN se hará en el móvil de la persona que entrega el envío. Esta acción confirmará la recepción y autorizará la liberación del pago.",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //height: screenHeight*0.35,
                //color: Colors.green,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 0, left: 20.0, right: 20.0),
                      child: buildButtonContainer(context, screenWidth),
                    ),
                  ],
                ),
              )
            ]),
      ),
    ));
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 50.0,
          //textColor: Colors.white,
          color: Constants.colorMorado,

          onPressed: () {
            print("hola");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OfertasUrgentes()));
            //OfertasUrgentes
          },
          child: Text(
            'Terminar',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
