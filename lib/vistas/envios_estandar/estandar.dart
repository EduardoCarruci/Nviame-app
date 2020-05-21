import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/vistas/envios_estandar/estandar_form.dart';

class EnvioEstandar extends StatefulWidget {
  @override
  _EnvioEstandarState createState() => _EnvioEstandarState();
}

class _EnvioEstandarState extends State<EnvioEstandar> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left:10.0,right:10.0),
            child: GestureDetector(
              onTap: () {
               Navigator.push(
            context, MaterialPageRoute(builder: (context) => EstandarForm())); 
              },
              child: Container(
                width: screenWidth * 0.95,
                height: 100,
                //color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.45),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                      ),
                    ]),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    SvgPicture.asset(
                      "assets/envio-estandar.svg",
                      //color: Constants.colorMorado,
                      fit: BoxFit.contain,
                      height: 35,
                      width: 35,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "ENVÍO ESTÁNDAR",
                          style: TextStyle(
                              color: Constants.colorAzulOscuro,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Paquetería, documentación, etc.",
                            style: TextStyle(color: Constants.colorGris)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height:40),
          FlatButton(
            onPressed: (){
              Navigator.pop(context);
            },
                      child: SvgPicture.asset(
              "assets/menuLateral.svg",
              //color: Constants.colorMorado,
              fit: BoxFit.contain,
              height: 15,
              width: 15,
            ),
          ),
        ],
      ),
    ));
  }
}
