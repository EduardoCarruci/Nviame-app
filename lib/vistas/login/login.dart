import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/vistas/home/home.dart';
import 'package:nviame_app/vistas/login/register.dart';
import 'package:nviame_app/vistas/login/terminos_condiciones.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controlleremail = new TextEditingController();
  TextEditingController _controllerpassword = new TextEditingController();
  //final user = new Provider();
  //User usuario = new User();
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 60,
              width: screenWidth * 0.75,
              child: SvgPicture.asset(
                "assets/logo-violeta-NVIAME-login.svg",
                color: Color(0xFF6327f8),
              ),
            ),
            Container(
              //color: Colors.red,
              //height: screenHeight,
              //width: screenWidth,
              padding: EdgeInsets.only(
                  top: 0.0, right: 20.0, left: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Correo electrónico",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  buildTextField("Correo electrónico", 30, _controlleremail),
                  SizedBox(
                    height: 30.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Contraseña",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  buildTextField("Contraseña", 20, _controllerpassword),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Olvidé mi contraseña",
                          style: TextStyle(
                            color: Constants.colorMorado,
                            fontFamily: "Roboto",
                            fontSize: 15,
                            //fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0),
                  buildButtonContainer(context, screenWidth),
                 /*  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: CupertinoButton(
                      //textColor: Colors.white,
                      color: Constants.colorMorado,
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.2750,
                          right: screenWidth * 0.2750,
                          top: 10,
                          bottom: 10.0),
                      onPressed: () {},
                      child: Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                   */SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "No tengo cuenta, ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              //fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                            Navigator.push(
            context, MaterialPageRoute(builder: (context) => Register()));
                            },
                            child: Text(
                              "quiero registrarme.",
                              style: TextStyle(
                                  color: Constants.colorMorado,
                                  fontSize: 16,
                                  //fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto"),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                
                  Container(
                    height: screenHeight * 0.18,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            
                            Navigator.push(
            context, MaterialPageRoute(builder: (context) => TerminosCondiciones()));
                          },
                                                  child: Text(
                            "Condiciones de uso",
                            style: TextStyle(
                              //fontWeight: FontWeight.w600,
                              color: Constants.colorMorado,
                            ),
                          ),
                        ),
                        Text(
                          "Seguridad y Privacidad",
                          style: TextStyle(
                            //fontWeight: FontWeight.w600,
                            color: Constants.colorMorado,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String hintText, int largo, TextEditingController controlador) {
    return TextField(
      decoration: InputDecoration(
        //labelText: hintText,
        suffixIcon: hintText == "Contraseña"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Contraseña" ? _isHidden : false,
      keyboardType: TextInputType.text,

      controller: controlador,
      //textInputAction: TextInputAction.next,
      cursorColor: Colors.deepPurple,

      onChanged: (va) {},

      // focusNode: _local,
    );
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: CupertinoButton(
        //textColor: Colors.white,
        color: Constants.colorMorado,
        padding: EdgeInsets.only(
           left: screenWidth * 0.2750,
            right: screenWidth * 0.2750,
            top: 15,
            bottom: 15.0),
            //0.30
        onPressed: () {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
