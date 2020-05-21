import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:toggle_switch/toggle_switch.dart';

class FomrPerfil extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<FomrPerfil> {
  TextEditingController _controlleremail = new TextEditingController();
  //TextEditingController _controllerpassword = new TextEditingController();
  int currentIndex = 0;

  List<String> labels2 = ["Datos personales", "Mis vehículos"];
  String _opcionSeleccionada = 'Cedula';
  List<String> locations = ['Cedula', 'Documentacion'];

  String _opcionCodigo = '0102';
  List<String> codigos = ['0102', '0105'];

  String _opcionPais = 'Argentina';
  List<String> paises = ['Argentina', 'España'];

  File imgFile;

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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            appBar: CustomBar(
              appBar: AppBar(),
            ),
            drawer: CustomDrawer(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "MIS DATOS PERSONALES",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Constants.colorMorado),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Nombre y Apellido",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                    buildTextField("Correo electrónico", 30, _controlleremail),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Correo electrónico",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                    buildTextField("Correo electrónico", 30, _controlleremail),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Domicilio",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                    buildTextField("Correo electrónico", 30, _controlleremail),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Provincia/Estado",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                    Container(
                      height: 48,
                      child: DropdownButtonFormField<String>(
                        value: _opcionSeleccionada,
                        isExpanded: true,
                        itemHeight: 48.0,
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
                                  TextStyle(color: Colors.black, fontSize: 13),
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
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: screenWidth * 0.40,
                          //color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Localidad",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Colors.black54,
                                  fontSize: 13,
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.40,
                                height: 48,
                                child: DropdownButtonFormField<String>(
                                  value: _opcionSeleccionada,
                                  itemHeight: 48.0,
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                  iconEnabledColor: Colors.blue,
                                  elevation: 1,
                                  items: locations.map((String val) {
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
                                    _opcionSeleccionada = opt;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          width: screenWidth * 0.40,
                          //color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Codigo Postal",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: Colors.black54,
                                  fontSize: 13,
                                ),
                              ),
                              Container(
                                width: screenWidth * 0.40,
                                height: 48,
                                child: DropdownButtonFormField<String>(
                                  value: _opcionCodigo,
                                  itemHeight: 48.0,
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                  iconEnabledColor: Colors.blue,
                                  elevation: 1,
                                  items: codigos.map((String val) {
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
                                    _opcionCodigo = opt;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "País",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                    Container(
                      height: 48,
                      child: DropdownButtonFormField<String>(
                        value: _opcionPais,
                        isExpanded: true,
                        itemHeight: 48.0,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        iconEnabledColor: Colors.blue,
                        elevation: 1,
                        items: paises.map((String val) {
                          return new DropdownMenuItem<String>(
                            value: val,
                            child: new Text(
                              val,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                              textScaleFactor: 1.0,
                            ),
                          );
                        }).toList(),
                        hint: Text("Opcion"),
                        onChanged: (opt) {
                          _opcionPais = opt;
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: screenWidth * 0.35,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "DNI/CUIL/CUIT",
                                style: TextStyle(fontSize: 13.0),
                              ),
                              buildTextField(
                                  "Correo electrónico", 30, _controlleremail),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Teléfono Móvil (Sin 0 ni 15)",
                                style: TextStyle(fontSize: 13.0),
                              ),
                              buildTextField(
                                  "Correo electrónico", 30, _controlleremail),
                            ],
                          ),
                        ),
                      ],
                    ),
                    _decideImgView(screenWidth),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: ToggleSwitch(
                          minWidth: screenWidth * 0.45,
                          cornerRadius: 20,
                          activeBgColor: Constants.colorMorado,
                          activeTextColor: Colors.white,
                          inactiveBgColor: Constants.colorGris,
                          inactiveTextColor: Colors.white,
                          labels: ['Datos personales', 'Mis vehículos'],
                          activeColors: [
                            Constants.colorMorado,
                            Constants.colorMoradoOscuro
                          ],
                          onToggle: (index) {
                            print('switched to: $index');
                          }),
                    ),
                  ],
                ),
              ),
            )));
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

  Widget _decideImgView(screenWidth) {
    if (imgFile == null) {
      return GestureDetector(
        onTap: () {
          _showChoiceDialog(context);
        },
        child: Padding(
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

  buildTextField(
      String hintText, int largo, TextEditingController controlador) {
    return TextField(
      decoration: InputDecoration(
          //labelText: hintText,

          ),

      keyboardType: TextInputType.text,

      controller: controlador,
      //textInputAction: TextInputAction.next,
      cursorColor: Colors.deepPurple,

      onChanged: (va) {},

      // focusNode: _local,
    );
  }
}
