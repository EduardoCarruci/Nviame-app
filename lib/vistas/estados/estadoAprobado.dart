import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';


class EstadoAprbado extends StatefulWidget {
  @override
  _OfertasState createState() => _OfertasState();
}

class _OfertasState extends State<EstadoAprbado> {
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
                  Container(
                    height: screenHeight * 0.30,
                    width: double.infinity,
                    //color: Colors.red,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      "assets/OFERTA-CONFIRMADA-Muy-bien-imagen.svg",
                      height: screenHeight * 0.30,
                      width: screenWidth * 0.30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                   // color: Colors.red,
                    height: screenHeight * 0.25,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "¡Muy bien!",
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Constants.colorMorado,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Han aceptado tu oferta.",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Constants.colorMorado,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Cuando realicen el pago, deberas coordinar " +
                                "el retiro del paquete y entregarlo lo antes " +
                                "posible. ¡Buena suerte!",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black87.withOpacity(0.85),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.30,
                    width: double.infinity,
                    //color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 15.0, left: 20, right: 20),
                          child: buildButtonContainer(context, screenWidth),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 30.0, right: 30.0, bottom: 10.0),
                          child: Text(
                            "El monto de la operación será liberado una vez que el" +
                                "envío haya sido entregado y confirmado por el usuario" +
                                "creador del envio.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.black.withOpacity(0.65)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }


  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: CupertinoButton(
          //textColor: Colors.white,
          color: Constants.colorMorado,
          padding: EdgeInsets.only(
              left: screenWidth * 0.32,
              right: screenWidth * 0.32,
              top: 10,
              bottom: 10.0),
          onPressed: () {
            
          },
          child: Text(
            'Continuar',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
