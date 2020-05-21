import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/vistas/envios_estandar/envio_okay.dart';
import 'package:toggle_switch/toggle_switch.dart';

class FormContinuacion extends StatefulWidget {
  @override
  _EnvioEstandarState createState() => _EnvioEstandarState();
}

class _EnvioEstandarState extends State<FormContinuacion> {
  TextEditingController controlAncho = new TextEditingController();

  double screenWidth, screenHeight;

  //String _opcionSeleccionada = 'Cedula';
  List<String> locations = ['Cedula', 'Documentacion Personal'];
  String _opcionSeleccionada = 'Cedula';

  List<String> labels = ["Sale ahora", "Programar retiro"];
  List<String> labels2 = ["Recibir ofertas", "Pago máximo"];
  List<String> labels3 = ["Normal", "Urgente"];
  int currentIndex = 0;

  @override
  void initState() {
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
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "Medidas aproximadas",
                  style: TextStyle(
                      color: Constants.colorAzulOscuro,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              //color: Colors.red,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textmorado("ANCHO"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              width: 40,
                              height: 40,
                              //color: Colors.blue,
                              child: buildTextField("cm", controlAncho, null)),
                          Container(
                            height: 15,
                            width: 22,
                            // color: Colors.green,
                            child: Text(
                              "CM",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textmorado("ALTO"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              width: 40,
                              height: 40,
                              // color: Colors.blue,
                              child: buildTextField("cm", controlAncho, null)),
                          Container(
                            height: 15,
                            width: 22,
                            // color: Colors.green,
                            child: Text(
                              "CM",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textmorado("PROF."),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              width: 40,
                              height: 40,
                              //  color: Colors.blue,
                              child: buildTextField("cm", controlAncho, null)),
                          Container(
                            height: 15,
                            width: 22,
                            // color: Colors.green,
                            child: Text(
                              "CM",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      textmorado("PESO"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              width: 40,
                              height: 40,
                              //   color: Colors.blue,
                              child: buildTextField("cm", controlAncho, null)),
                          Container(
                            height: 15,
                            width: 22,
                            //: Colors.green,
                            child: Text(
                              "KG",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Container(
                    height: 50,
                    width: screenWidth * 0.92,
                    color: Constants.colorGrisNuevo,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 100.0,
                            child: Container(
                               // color: Colors.blue,
                                height: 50,
                                width: screenWidth *0.90,
                                child: Center(
                                  child: Text("Programar retiro",textAlign: TextAlign.right,style: TextStyle(color:Constants.colorTexto,
                                  fontSize: 13.0,
                                  //fontWeight: FontWeight.bold
                                  )),
                                ),
                                )), //atras
                        Padding(
                          padding: const EdgeInsets.only(left:5.0,right: 5.0,top: 5.0,bottom: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Container(
                              color: Constants.colorMorado,
                              height: 50.0,
                              width: screenWidth * 0.45,
                              child: Center(child: Text("Sale ahora",style: TextStyle(color:Colors.white)),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Fecha máxima de llegada (opcional)",
                  style: TextStyle(
                      color: Constants.colorAzulOscuro,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, right: 15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    color: Constants.colorGrisNuevo,
                    height: 50,
                    width: screenWidth * 0.93,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 10, top: 2),
                      child: DropdownButtonFormField<String>(
                        value: _opcionSeleccionada,
                        itemHeight: 50,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Constants.colorAzulOscuro,
                        ),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        iconEnabledColor: Colors.blue,
                        elevation: 1,
                        items: locations.map((String val) {
                          return new DropdownMenuItem<String>(
                            value: val,
                            child: new Text(
                              val,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          );
                        }).toList(),
                        hint: Text("Opcion"),
                        onChanged: (opt) {
                          _opcionSeleccionada = opt;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                )),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Container(
                    height: 50,
                    width: screenWidth * 0.92,
                    color: Constants.colorGrisNuevo,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 100.0,
                            child: Container(
                               // color: Colors.blue,
                                height: 50,
                                width: screenWidth *0.90,
                                child: Center(
                                  child: Text("Recibir Ofertas",textAlign: TextAlign.right,style: TextStyle(color:Constants.colorTexto,
                                  fontSize: 13.0,
                                  //fontWeight: FontWeight.bold
                                  )),
                                ),
                                )), //atras
                        Padding(
                          padding: const EdgeInsets.only(left:5.0,right: 5.0,top: 5.0,bottom: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Container(
                              color: Constants.colorMorado,
                              height: 50.0,
                              width: screenWidth * 0.45,
                              child: Center(child: Text("Programar retiro",style: TextStyle(color:Colors.white)),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Ingrese el monto a pagar (opcional)",
                  style: TextStyle(
                      color: Constants.colorAzulOscuro,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(),
                  color: Constants.colorGrisNuevo,
                  height: 50,
                  width: screenWidth * 0.93,
                  child: textFieldContainer(
                      "Nombre + Nº de móvil ó adjunte un contacto",
                      null,
                      Icon(
                        Icons.attach_file,
                        color: Constants.colorAzulOscuro,
                        size: 30,
                      )),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Tipo de envío",
                  style: TextStyle(
                      color: Constants.colorAzulOscuro,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 0.0,
            ),
              Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Container(
                    height: 50,
                    width: screenWidth * 0.92,
                    color: Constants.colorGrisNuevo,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 100.0,
                            child: Container(
                               // color: Colors.blue,
                                height: 50,
                                width: screenWidth *0.90,
                                child: Center(
                                  child: Text("Urgente",textAlign: TextAlign.right,style: TextStyle(color:Constants.colorTexto,
                                  fontSize: 13.0,
                                  //fontWeight: FontWeight.bold
                                  )),
                                ),
                                )), //atras
                        Padding(
                          padding: const EdgeInsets.only(left:5.0,right: 5.0,top: 5.0,bottom: 5.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Container(
                              color: Constants.colorMorado,
                              height: 50.0,
                              width: screenWidth * 0.45,
                              child: Center(child: Text("Normal",style: TextStyle(color:Colors.white)),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          Padding(
              padding: const EdgeInsets.only(left: 0, top: 20, right: 0.0),
              child: buildButtonContainer(context, screenWidth),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              //color: Colors.blue,
              width: screenWidth,
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      "assets/menuLateral.svg",
                      height: 15,
                      width: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("hola");
                      /*  Navigator.push(
              context, MaterialPageRoute(builder: (context) => OnboardingScreen())); */
                    },
                    child: Text(
                      "Cancelar",
                      style: TextStyle(
                          color: Constants.colorMorado,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ));
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: CupertinoButton(
          //textColor: Colors.white,
          color: Constants.colorMorado,
          padding: EdgeInsets.only(
              left: screenWidth * 0.33,
              right: screenWidth * 0.33,
              top: 10,
              bottom: 10.0),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FormOkay()));
          },
          child: Text(
            'Crear Envío',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget textmorado(String texto) {
    return Text(
      texto,
      style: TextStyle(color: Constants.colorMorado),
    );
  }

  Widget textFieldContainer(
      String hintText, TextEditingController controlador, Icon icono) {
    return TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            FontAwesomeIcons.dollarSign,
            color: Constants.colorAzulOscuro,
          ),
        ),
        controller: controlador,
        cursorColor: Colors.deepPurple,
        onChanged: (va) {});
  }

  Widget buildTextField(
      String hintText, TextEditingController controlador, Icon icono) {
    return TextField(
      //obscureText: hintText == "Contraseña" ? _isHidden : false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          //suffixIcon: Icon(Icons.access_alarm)
          //prefixIcon: Icon(FontAwesomeIcons.dollarSign),
          ),
      controller: controlador,
      //textInputAction: TextInputAction.next,
      cursorColor: Colors.deepPurple,

      onChanged: (va) {},

      // focusNode: _local,
    );
  }
}
