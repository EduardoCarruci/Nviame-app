import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';

class Billetera extends StatefulWidget {
  @override
  _BilleteraState createState() => _BilleteraState();
}

class _BilleteraState extends State<Billetera> {
  TextEditingController _controlleremail = new TextEditingController();
  TextEditingController _controllerpassword = new TextEditingController();
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
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "MI BILLETERA",
                        style: TextStyle(
                            color: Constants.colorMorado,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Noviembre, 2019",
                        style: TextStyle(
                          color: Constants.colorGris,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/MI-BILLETERA-cerrar-mercado-pago.svg",
                        height: 15,
                        width: 15,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/mercado-pago-logo.svg",
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Usuario o e-mail de Mercado Pago",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: buildTextField(_controlleremail),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: Align(
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
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: buildTextField(_controllerpassword),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    //left: 20,
                  ),
                  child: Center(child: buildButtonContainer(context, screenWidth)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20, top: 15),
                  child: Text(
                    "Luego de iniciar sesión con su cuenta de Mercado Pago," +
                        "necesitará generar las credenciales para autorizar a Nviame" +
                        "a gestionar los pagos que recibirá mediante la aplicación.",
                    style: TextStyle(color: Constants.colorGris, fontSize: 14),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                                              child: Container(
                          height: 80,
                          width: screenWidth * 0.42,
                          color: Colors.red,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Entregas",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  "1.945,45",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(borderRadius: BorderRadius.circular(5.0),
                                              child: Container(
                          height: 80,
                          width: screenWidth * 0.42,
                          color: Constants.colorMorado,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Envíos",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  "780,00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          height: 30,
                          width: 60,
                          alignment: Alignment.center,
                          color: Constants.colorMorado,
                          child: Text(
                            "TODO",
                            style: TextStyle(
                                 fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(color: Constants.colorGris.withOpacity(0.45))),
                        child: Text(
                          "Entregas",
                          style: TextStyle(
                            fontSize: 12.0,
                              color: Constants.colorLetra, fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(color: Constants.colorGris.withOpacity(0.45))),
                        child: Text(
                          "Envíos",
                          style: TextStyle(
                             fontSize: 12.0,
                              color: Constants.colorLetra, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      SvgPicture.asset(
                        "assets/MI-BILLETERA-lupa-buscar.svg",
                        height: 25,
                        width: 25,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Text("HOY"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 18.8),
                  child: Container(
                    height: 80,
                    width: screenWidth,
                    //color: Colors.blue,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, right: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                                                      child: Image(
                              image: AssetImage("assets/camara.jpg"),
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                                SizedBox(height:2.0),
                              Text(
                                "Entrega",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54.withOpacity(0.58),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height:6.0),
                              Text(
                                "NFORMÁTICA Y ACCESORIOS",
                                style: TextStyle(
                                  color: Constants.colorGris,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                //color: Colors.blue,
                                width: screenWidth * 0.66,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  /* mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween, */
                                  children: <Widget>[
                                    Text(
                                      "\$10.525,00",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Constants.colorAzulOscuro,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Text(
                                      "+\$525,00",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Constants.colorMorado,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 20, right: 20),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ))));
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: CupertinoButton(
        //textColor: Colors.white,
        color: Constants.colorMorado,
        padding: EdgeInsets.only(
            left: screenWidth * 0.2750,
            right: screenWidth * 0.2750,
            top: 10,
            bottom: 10.0),
        onPressed: () {
          
        },
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controlador) {
    return TextField(
      keyboardType: TextInputType.text,

      controller: controlador,
      //textInputAction: TextInputAction.next,
      cursorColor: Colors.deepPurple,

      onChanged: (va) {},

      // focusNode: _local,
    );
  }
}
