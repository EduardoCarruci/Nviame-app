import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/vistas/login/login.dart';
import 'package:nviame_app/vistas/login/terminos_condiciones.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          //physics: NeverScrollableScrollPhysics,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                //color: Colors.green,
                height: screenHeight * 0.15,
                width: screenWidth * 0.75,
                child: SvgPicture.asset(
                  "assets/logo-violeta-NVIAME-login.svg",
                  color: Color(0xFF6327f8),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                //color: Colors.red,
                //height: screenHeight*0.65,
                //width: screenWidth,
                padding: EdgeInsets.only(
                    top: 0.0, right: 20.0, left: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "¡Hola!",
                        style:
                            TextStyle(fontSize: 30.0, color: Constants.colorMorado),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Vamos a comenzar.",
                        style:
                            TextStyle(fontSize: 25.0, color: Constants.colorMorado),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
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
                      height: screenHeight * 0.03,
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
                      height: screenHeight * 0.03,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Repetir Contraseña",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    buildTextField(
                        "Repetir Contraseña", 20, _controllerpassword),
                    SizedBox(height: 25.0),
                    buildButtonContainer(context, screenWidth),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                          GestureDetector(
                            onTap: (){
Navigator.push(
            context, MaterialPageRoute(builder: (context) => TerminosCondiciones()));

                            },
                                                      child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        text: "Al crear una nueva cuenta, estás aceptando los ",
                        children: <TextSpan>[
                            TextSpan(
                                text: 'Términos y Condiciones ',
                                style: TextStyle(color: Constants.colorMorado,)),
                            TextSpan(text: 'de uso.')
                        ],
                      ),
                    ),
                          ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    GestureDetector(
                      onTap: (){
                       Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
                      },
                                          child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: "Si ya estás registrado, ",
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Inicia sesión.',
                                  style: TextStyle(color: Constants.colorMorado)),
                            ],
                          ),
                        ),
                    ),
                    
                  ],)

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
        suffixIcon: hintText == "Contraseña" || hintText == "Repetir Contraseña"
            ? IconButton(
                onPressed: _toggleVisibility,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
      ),
      obscureText: hintText == "Contraseña" || hintText == "Repetir Contraseña"
          ? _isHidden
          : false,
      keyboardType: TextInputType.text,

      controller: controlador,
      //textInputAction: TextInputAction.next,
      cursorColor: Colors.deepPurple,

      onChanged: (va) {},

      // focusNode: _local,
    );
  }


    Widget buildButtonContainer(BuildContext context, screenWidth) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: MaterialButton(
          //textColor: Colors.white,
          
          color: Constants.colorMorado,
           
        minWidth: double.infinity,
        height: 50,
        animationDuration: Duration(seconds: 1),
         
          onPressed: () {
            
          },
          child: Text(
            'Crear Cuenta',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,color:Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
