import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/vistas/envios_estandar/envio_form_dos.dart';
import 'package:page_transition/page_transition.dart';

class EstandarForm extends StatefulWidget {
  @override
  _EnvioEstandarState createState() => _EnvioEstandarState();
}

class _EnvioEstandarState extends State<EstandarForm> {
  TextEditingController puntodePartida = new TextEditingController();
  TextEditingController lugardeDestino = new TextEditingController();
  TextEditingController receptor = new TextEditingController();
  TextEditingController descripcion = new TextEditingController();

  double screenWidth, screenHeight;

  String _opcionSeleccionada = 'Cedula';
  List<String> locations = ['Cedula', 'Documentacion Personal'];

  File imgFile;

  @override
  void initState() {
    super.initState();
  }

  _openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {});

    imgFile = picture;
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {});

    imgFile = picture;

    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Make a Choice"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Gallery"),
                    onTap: () {
                      _openGallery(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    child: Text("Camera"),
                    onTap: () {
                      _openCamera(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
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
                  "ENVÍO ESTÁNDAR",
                  style: TextStyle(
                      color: Constants.colorMorado,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(
                width: screenWidth * 0.98,
                height: 100,
                //color: Colors.red,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 25,
                      //color: Colors.blue,
                      child: SvgPicture.asset(
                        "assets/crear-envio-desde-hasta.svg",
                        //color: Constants.colorMorado,
                        fit: BoxFit.contain,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.green,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Column(
                            children: <Widget>[
                              buildTextField(
                                  "Punto de Partida",
                                  puntodePartida,
                                  Icon(
                                    Icons.gps_fixed,
                                    color: Constants.colorMorado,
                                  )),
                              buildTextField(
                                  "Lugar de destino", lugardeDestino, null),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "+AGREGAR DESTINO",
                    style: TextStyle(
                        color: Constants.colorMorado,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "¿Quién recibe?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Constants.colorAzulOscuro),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(),
                    color: Constants.colorGrisNuevo,
                    height: 40,
                    width: screenWidth * 0.93,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Nombre + Nº de móvil ó adjunte un contacto",
                            suffixIcon: Icon(
                              Icons.attach_file,
                              color: Constants.colorAzulOscuro,
                              size: 30,
                            )),
                        keyboardType: TextInputType.text,

                        controller: receptor,
                        //textInputAction: TextInputAction.next,
                        cursorColor: Colors.deepPurple,

                        onChanged: (va) {},
                      ),
                    ),
                    /* obscureText: hintText == "Contraseña" ? _isHidden : false, */

                    // focusNode: _local,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
              child: Text(
                "¿Qué tipo de producto es?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Constants.colorAzulOscuro),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15),
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
                              textScaleFactor: 1.0,
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
            _decideImgView(screenWidth),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Text(
                "Describe el producto",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Constants.colorAzulOscuro),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Container(
                color: Constants.colorGrisNuevo,
                height: 80,
                width: screenWidth * 0.93,
                child: textarea("", descripcion, null),
              ),
            ),

            //ASADAS
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              //color: Colors.blue,
              width: screenWidth,
              height: 70,
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
                  CupertinoButton(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Constants.colorMorado,
                    onPressed: () {
                    
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, duration: Duration(milliseconds: 800), child: FormContinuacion()));
                
                    },
                    child: Text(
                      "Siguiente",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SvgPicture.asset("assets/menuLateral.svg",
                      height: 15, width: 15, color: Colors.transparent),
                ],
              ),
            ),
          SizedBox(height: 15.0,),
          ],
        ),
      ),
    ));
  }

  Widget _decideImgView(screenWidth) {
    if (imgFile == null) {
      return GestureDetector(
        onTap: () {
          _showChoiceDialog(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15, top: 20, bottom: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Constants.colorGrisNuevo, width: 3.0)),
                  height: 90,
                  width: screenWidth * 0.28,
                  child: contenidoFoto()),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Constants.colorGrisNuevo, width: 3.0)),
                  height: 90,
                  width: screenWidth * 0.28,
                  child: contenidoFoto()),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Constants.colorGrisNuevo, width: 3.0)),
                  height: 90,
                  width: screenWidth * 0.28,
                  child: contenidoFoto()),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding:
            const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Constants.colorGrisNuevo, width: 3.0)),
                height: 90,
                width: screenWidth * 0.28,
                child: Image.file(
                  imgFile,
                  height: 90,
                  width: screenWidth * 0.28,
                  fit: BoxFit.cover,
                )),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Constants.colorGrisNuevo, width: 3.0)),
                height: 90,
                width: screenWidth * 0.28,
                child: Image.file(
                  imgFile,
                  height: 90,
                  width: screenWidth * 0.28,
                  fit: BoxFit.cover,
                )),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Constants.colorGrisNuevo, width: 3.0)),
                height: 90,
                width: screenWidth * 0.28,
                child: Image.file(
                  imgFile,
                  height: 90,
                  width: screenWidth * 0.28,
                  fit: BoxFit.cover,
                )),
          ],
        ),
      );
    }
  }

  Widget contenidoFoto() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset("assets/ENVIO-ESTANDAR-agregar-foto.svg",
            fit: BoxFit.contain, height: 25, width: 25),
        SizedBox(
          height: 10,
        ),
        Text(
          "Agregar Foto",
          style: TextStyle(
            color: Constants.colorGris,
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget textarea(
      String hintText, TextEditingController controlador, Icon icono) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration.collapsed(hintText: ""),
        /* obscureText: hintText == "Contraseña" ? _isHidden : false, */
        keyboardType: TextInputType.text,
        maxLines: 6,
        controller: controlador,
        //textInputAction: TextInputAction.next,
        cursorColor: Colors.deepPurple,

        onChanged: (va) {},

        // focusNode: _local,
      ),
    );
  }

  Widget buildTextField(
      String hintText, TextEditingController controlador, Icon icono) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: icono,
      ),
      /* obscureText: hintText == "Contraseña" ? _isHidden : false, */
      keyboardType: TextInputType.text,

      controller: controlador,
      //textInputAction: TextInputAction.next,
      cursorColor: Colors.deepPurple,

      onChanged: (va) {},

      // focusNode: _local,
    );
  }
}
