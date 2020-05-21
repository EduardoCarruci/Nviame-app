import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/vistas/billetera/billetera.dart';
import 'package:nviame_app/vistas/envios/envio_detalle.dart';
import 'package:nviame_app/vistas/envios/envios_disponibles.dart';


import 'package:nviame_app/vistas/envios_estandar/estandar.dart';
import 'package:nviame_app/vistas/ofertas/ofertas_urgentes.dart';

import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SolidController controladorSolid = SolidController();

  double screenWidth, screenHeight;
  double heightSolid;
  @override
  void initState() {
    controladorSolid.heightStream.listen((event) {
      heightSolid = event;
      //print(heightSolid);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          drawer: CustomDrawer(),
          appBar: CustomBar(
            appBar: AppBar(),
          ),
          body: Container(
            width: mediaQuery.width,
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    buildButtonContainer(context, screenWidth),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        //color: Colors.green,

                        child: Text(
                          "Tareas activas",
                          style: TextStyle(
                              color: Constants.colorAzulOscuro,
                              fontWeight: FontWeight.w900,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _cardActivity(
                        screenWidth,
                        "Av. Leandro Alem 50, Bahía Blanca, AR.",
                        "Sale ahora",
                        "Av. Corrientes 1625, Capital Federal, AR.",
                        "Antes de Mie 24 DIC 10:30 h",
                        "ENVÍO ESTÁNDAR",
                        Constants.colorMorado),
                    _cardActivity(
                        screenWidth,
                        "3 de Febrero 610, Bahía Blanca, AR",
                        "Sale Lun 22 Dic 08:00 h.",
                        "Av. 9 de Julio 250, Capital Federal, AR.",
                        "Antes de Lun 22 DIC 17:00 h.",
                        "ENTREGA",
                        Constants.colorAzulOscuro),
                  ],
                ),
                //SideBar(),
              ],
            ),
          ),
          bottomSheet: SolidBottomSheet(
            controller: controladorSolid,
            draggableBody: true,
            maxHeight: 200,
            elevation: 0,
            //minHeight: 20,

            headerBar: Container(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),

                //color: Theme.of(context).primaryColor,
                height: 50,
                child: Center(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    color: Constants.colorMorado,
                    height: 5.0,
                    width: 120,
                  ),
                )),
              ),
            ),
            body: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Container(
                color: Color(0xFFE0E0E0),
                //height: 216,
                //color: Colors.red,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                       Navigator.push(
            context, MaterialPageRoute(builder: (context) => EnviosDisponibles()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Color(0xFFE0E0E0),
                            /*   boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              offset: Offset(45.0, 45.0),
                              spreadRadius: 150,
                              blurRadius: 35.0,
                           
                            ),
                          ], */
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: <Widget>[
                               
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                                                      child: Container(
                                      width: screenWidth * 0.65,
                                      height: 60,
                                      // color: Colors.redAccent,

                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black54,
                                              blurRadius: 5.0,
                                              spreadRadius: 2.0,
                                            ),
                                          ]),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            "assets/ver-envios-disponibles.svg",
                                            color: Constants.colorMorado,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text("Ver envíos disponibles",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  color: Constants.colorGris,
                                                  fontSize: 15))
                                        ],
                                      ),
                                    ),
                                  ),
                               
                                Positioned(
                                  right: 10,
                                  child: ClipOval(
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      color: Constants.colorMorado,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "17",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      //color: Color(0xFFf2f3f5),

                      //color: Colors.green,
                      height: 130,
                      width: screenWidth,
                      child: FutureBuilder(
                          //stream: slides,
                          future: DefaultAssetBundle.of(context)
                              .loadString('assets/data.json'),
                          initialData: [],
                          builder: (context, AsyncSnapshot snap) {
                            List _list = json.decode(snap.data.toString());
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,

                              //controller: controller,
                              itemCount: _list.length,
                              itemBuilder: (context, int currentIndex) {
                                //print(new_data[1].toString());
                                return _buildStoryPage(_list[currentIndex]);
                              },
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Widget _cardActivity(screenWidth, String calle, String estado, String _calle,
      String _estado, String envio, Color color) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EnvioDetalle()));
       
      },
              child: Container(
          // margin: EdgeInsets.only(left: 5.0,right:5.0),
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          width: screenWidth,
          height: 140,
          //color: Colors.green,
          child: Stack(
            children: <Widget>[
              Center(
                child: Card(
                  elevation: 2,
                  child: Container(
                    width: screenWidth,
                    height: 100,
                    //: Colors.blue,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 100,
                          //color: Colors.red,
                          width: 39,
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
                        //SizedBox(width: 5.0,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                calle,
                                style: TextStyle(fontSize: 13.0),
                              ),
                              Text(
                                estado,
                                style: TextStyle(
                                    color: Constants.colorMorado, fontSize: 13.0),
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
                                    color: Constants.colorMorado, fontSize: 13.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 6,

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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoryPage(Map data) {
    return GestureDetector(
      onTap: () {
        if (data['nombre'] == "Mis Envios") {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => OfertasUrgentes())); 
        } else if (data['nombre'] == "Mi billetera") {
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => Billetera())); 
        }
      },
      child: Container(
          alignment: Alignment.topCenter,
          width: 130,
          //height: 100,
          //color: Colors.red,
          margin: EdgeInsets.only(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //mi-billetera
              SvgPicture.asset(
                data['foto'],
                color: Constants.colorMorado,
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                data['nombre'],
                style: TextStyle(color: Colors.black, fontSize: 13.0),
              )
            ],
          )),
    );
  }

  Widget buildButtonContainer(BuildContext context, screenWidth) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: CupertinoButton(
        //textColor: Colors.white,
        color: Constants.colorMorado,
        padding: EdgeInsets.only(
            left: screenWidth * 0.32,
            right: screenWidth * 0.32,
            top: 15,
            bottom: 15.0),
        onPressed: () {
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => EnvioEstandar()));
        },
        child: Text(
          'Quiero enviar',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
