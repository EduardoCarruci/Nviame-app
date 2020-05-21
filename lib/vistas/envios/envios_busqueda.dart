import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/utils/providers.dart';
import 'package:nviame_app/vistas/envios/envio_detalle.dart';
import 'package:nviame_app/vistas/envios/envios_disponibles.dart';
import 'package:nviame_app/widgets/container_envios.dart';
import 'package:provider/provider.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class EnviosBusqueda extends StatefulWidget {
  @override
  _EnviosState createState() => _EnviosState();
}

class _EnviosState extends State<EnviosBusqueda> {
  SolidController controladorSolid = SolidController();
  double screenWidth, screenHeight;
  bool isSwitched = true;
  Color colors = Constants.colorMorado;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final providerInfo = Provider.of<ProviderInfo>(context);
    
    Size mediaQuery = MediaQuery.of(context).size;
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return SafeArea(
        child: Scaffold(
      appBar: CustomBar(
        appBar: AppBar(),
      ),
      drawer: CustomDrawer(),
      body: Container(
        width: mediaQuery.width,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //ACA DEBERIA ESTAR E CONTAINER
                ContainerEnvios(),
                Container(
                  //margin: EdgeInsets.only(left: 20),
                  width: screenWidth,
                  height: 90,
                  //color: Colors.red,
                  color: Color(0xFFF1F1F1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: _textBlue("Ordenar Resultados"),
                            ),
                            Text(
                              "Eliminar filtro",
                              style: TextStyle(color: Constants.colorMorado),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(),
                                  color: Colors.white,
                                  height: 40,
                                  width: screenWidth * 0.60,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "Más cercanos primero",
                                      style: TextStyle(
                                          color: Constants.colorGris,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: RaisedButton(
                                  color: Constants.colorMoradoOscuro,
                                  textColor: Colors.white,
                                  elevation: 5,
                                  padding: EdgeInsets.only(left: 27, right: 27),
                                  onPressed: () {},
                                  child: Text("Aplicar"),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
               /*  Visibility(
                  visible: providerInfo.escalones,
                  child: EnviosDisponibles(),
                ), */

                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Hoy",
                                style: TextStyle(
                                  color: Constants.colorAzulOscuro,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(child: null),
                            ),
                            Text("Estás viendo:",
                                style: TextStyle(
                                    color: Constants.colorGris,
                                    fontWeight: FontWeight.w600)),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                " Más cercanos primero",
                                style: TextStyle(
                                  color: Constants.colorAzulOscuro,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Ayer",
                              style: TextStyle(
                                color: Constants.colorAzulOscuro,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        _cardActivity(
                            screenWidth,
                            "Salinas Chicas 918, Bahía Blanca, ARG.",
                            "Sale ahora",
                            "Av. Corrientes 525, Capital Federal, ARG.",
                            "Antes de Mie 23 AGO 10:30 h.",
                            "PAGO MÁXIMO",
                            Constants.colorMorado,
                            "EVALÚA OFERTAS"),
                      ],
                    ),
                  ),
                )),
              ],
            ),
            //SideBar(),
          ],
        ),
      ),
    ));
  }

  Widget _cardActivity(screenWidth, String calle, String estado, String _calle,
      String _estado, String envio, Color color, String textButton) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EnvioDetalle()));
      },
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        width: screenWidth,
        height: 220,
        //color: Colors.green,
        child: Stack(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 2,
                child: Container(
                    width: screenWidth,
                    height: 170,
                    //color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 100,
                              //color: Colors.red,
                              width: 30,
                              alignment: Alignment.topCenter,
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/desde-hasta-normal.svg",
                                  //color: Constants.colorMorado,
                                  fit: BoxFit.contain,
                                  height: 55,
                                  width: 75,
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    calle,
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  Text(
                                    estado,
                                    style: TextStyle(
                                        color: Constants.colorMorado,
                                        fontSize: 13.0),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    _calle,
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  Text(
                                    _estado,
                                    style: TextStyle(
                                        color: Constants.colorMorado,
                                        fontSize: 13.0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          //color: Colors.red,
                          width: screenWidth * 0.90,
                          height: 60,
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Container(
                                    height: 60,
                                    //color: Colors.blue,
                                    width: screenWidth * 0.15,
                                    child: Image(
                                      image: AssetImage("assets/camara.jpg"),
                                      height: 80,
                                      width: screenWidth * 0.15,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                        "assets/tiempo-estimado-de-viaje.svg",
                                        //color: Constants.colorMorado,
                                        fit: BoxFit.contain,
                                        height: 15,
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Tiempo estimado de viaje",
                                        style: TextStyle(fontSize: 13.0),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.075,
                                      ),
                                      Text("7:30 h",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 13.0))
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                        "assets/distancia-aproximada.svg",
                                        //color: Constants.colorMorado,
                                        fit: BoxFit.contain,
                                        height: 15,
                                        width: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Distancia aproximada",
                                        style: TextStyle(fontSize: 13.0),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.12,
                                      ),
                                      Text("693 km",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 13.0))
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Positioned(
              right: 150,
              top: 12,
              //left: -5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 22,
                    width: 130,
                    color: color,
                    child: Text(
                      envio,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 12,
              //left: -5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 22,
                    width: 130,
                    color: Constants.colorAzulOscuro,
                    child: Text(
                      textButton,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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
}
