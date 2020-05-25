import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';

import 'package:nviame_app/vistas/maps/map.dart';
import 'package:nviame_app/widgets/container_envios.dart';

import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
/* import 'package:speech_bubble/speech_bubble.dart'; */

class EnvioDetalle extends StatefulWidget {
  @override
  _EnviosState createState() => _EnviosState();
}

class _EnviosState extends State<EnvioDetalle> {
  SolidController controladorSolid = SolidController();
  double screenWidth, screenHeight;
  bool isSwitched = true;
  bool isDialog = false;
  Color colors = Constants.colorMorado;

  TextEditingController controlAncho = new TextEditingController();
  TextEditingController controlAlto = new TextEditingController();
  TextEditingController controlProf = new TextEditingController();
  TextEditingController controlPeso = new TextEditingController();
  TextEditingController controlador = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
     //final providerInfo = Provider.of<ProviderInfo>(context);

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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //ACA DEBERIA ESTAR E CONTAINER
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: ContainerEnvios(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child:
                        _textBlue("Creado el Viernes, 13 de Diciembre de 2019"),
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
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Container(
                      height: 0.5,
                      width: screenWidth,
                      color: Constants.colorGris,
                    ),
                  ),
                  Container(
                    height: 60.0,
                    color: Color(0xFFefefef),
                    width: screenWidth,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          //color: Colors.red,
                          width: screenWidth * 0.80,
                          height: 50.0,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      width: 55,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      width: 70,
                                    ),
                                    Text("693 km",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 13.0))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){

                              print("hola");
                              Navigator.push(
            context, MaterialPageRoute(builder: (context) => MapOferta()));
                            },
                                                      child: Container(
                              // color: Colors.green,
                              child: SvgPicture.asset(
                                "assets/ver-mapa.svg",
                                height: 40.0,
                                width: 20.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Container(
                      height: 0.5,
                      width: screenWidth,
                      color: Constants.colorGris,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.blue,
                        child: Image(
                          height: 120,
                          width: screenWidth,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/camara.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: <Widget>[_textBlue("Descripción del envío")],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit." +
                            "Suspendisse eget felis cursus, lobortis turpis eget, eleif" +
                            "end lacus, Aenean eu egestas ante. Nullam felis nulla," +
                            "sodales nec pharetra eu, maximus non lacus.",
                        textAlign: TextAlign.left,
                        style: TextStyle(wordSpacing: 1.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: <Widget>[_textBlue("Medidas aproximadas")],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  // color: Colors.blue,
                                  child: buildTextField("cm", controlAncho)),
                              Container(
                                height: 15,
                                width: 22,
                                //color: Colors.green,
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
                                  //  color: Colors.blue,
                                  child: buildTextField("cm", controlAncho)),
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
                                  child: buildTextField("cm", controlAncho)),
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
                                  // color: Colors.blue,
                                  child: buildTextField("cm", controlAncho)),
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
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right:15.0),
                    child: buildButtonContainer(context, screenWidth),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            //SideBar(),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: isDialog ? transparentWidget(context) : Container(),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget transparentWidget(BuildContext context) {
    return Container(
      color: Constants.colorAzulOscuro.withOpacity(0.75),
      width: double.infinity,
      height: double.infinity,
      child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(15.0),
                        topRight: const Radius.circular(15.0),
                        bottomLeft: const Radius.circular(15.0),
                        bottomRight: const Radius.circular(15.0),
                      )),

                  //ACA DEBERIA MI CODIGO
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 10),
                          child: Text("HAGA SU OFERTA",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Constants.colorMorado,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                //color: Colors.blue,
                                height: 50.0,
                                width: 250.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SvgPicture.asset(
                                          "assets/tiempo-estimado-de-viaje.svg",
                                          //color: Constants.colorMorado,
                                          fit: BoxFit.contain,
                                          height: 20,
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          "Tiempo estimado de viaje",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Text("7:30 h",
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w800))
                                      ],
                                    ),
                                    SizedBox(height: 5.0),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        SvgPicture.asset(
                                          "assets/distancia-aproximada.svg",
                                          //color: Constants.colorMorado,
                                          fit: BoxFit.contain,
                                          height: 20,
                                          width: 20,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text("Distancia aproximada",
                                            style: TextStyle(
                                              fontSize: 13.0,
                                            )),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Text("693 km",
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w800))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                   Navigator.push(
            context, MaterialPageRoute(builder: (context) => MapOferta()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  width: 60,
                                  height: 50,
                                  //color: Colors.green,
                                  child: SvgPicture.asset("assets/ver-mapa.svg",
                                      fit: BoxFit.contain,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                      width: MediaQuery.of(context).size.width *
                                          0.03),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Divider(
                            color: Constants.colorGris,
                            height: 3,
                            thickness: 0.5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "INFORMACION DE REFERENCIA",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Constants.colorAzulOscuro,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: SvgPicture.asset(
                                  "assets/informacion-de-referencia.svg",
                                  //color: Constants.colorMorado,
                                  fit: BoxFit.contain,
                                  height: 17,
                                  width: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/horario-nocturno.svg",
                                //color: Constants.colorMorado,
                                fit: BoxFit.contain,
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Horario nocturno",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Constants.colorGris,
                                  //fontWeight: FontWeight.w900,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: SvgPicture.asset(
                                  "assets/check-verde.svg",
                                  //color: Constants.colorMorado,
                                  fit: BoxFit.contain,
                                  height: 11,
                                  width: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/dia-no-laborable.svg",
                                //color: Constants.colorMorado,
                                fit: BoxFit.contain,
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Día no laborable",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Constants.colorGris,
                                  //fontWeight: FontWeight.w900,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: SvgPicture.asset(
                                  "assets/check-verde.svg",
                                  //color: Constants.colorMorado,
                                  fit: BoxFit.contain,
                                  height: 11,
                                  width: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/tarifa-estimado-por-km.svg",
                                //color: Constants.colorMorado,
                                fit: BoxFit.contain,
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Tarifa estimada por kilómetro",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Constants.colorGris,
                                  //fontWeight: FontWeight.w900,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Text(
                                  "\u0024 42",
                                  style: TextStyle(
                                    color: Constants.colorGris,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 0),
                            width: MediaQuery.of(context).size.width * 0.81,
                            height: 50,
                            //color: Colors.blueGrey,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              controller: controlador,
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Ingrese oferta',
                                  hintStyle: TextStyle(
                                    fontSize: 13.0,
                                  )
                                  //labelText: 'Password',
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: Center(
                            child: buildButton(context, screenWidth),
                          ),
                        ),
                      ],
                    ),
                  ),

                  height: 360,
                  width: 320,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        isDialog = false;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/MI-BILLETERA-cerrar-mercado-pago.svg",
                      //color: Constants.colorMorado,
                      fit: BoxFit.contain,
                      height: 25,
                      width: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget buildButton(BuildContext context, screenWidth) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(50),
          child: MaterialButton(
        color: Constants.colorMorado,
      minWidth: screenWidth,
      height: 50,
        child: Text(
          "Ofertar",
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w900,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.normal),
        ),
        onPressed: () {
        
        },
      ),
    );
  }

  Widget textmorado(String texto) {
    return Text(
      texto,
      style: TextStyle(color: Constants.colorMorado),
    );
  }

  Widget buildTextField(String hintText, TextEditingController controlador) {
    return TextField(
      //obscureText: hintText == "Contraseña" ? _isHidden : false,
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
          child: MaterialButton(
        color: Constants.colorMorado,
        minWidth: double.infinity,
        height: 50.0,

      
          
        child: Text(
          "Ofertar",
          overflow: TextOverflow.fade,
          maxLines: 1,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.normal),
        ),
        onPressed: () {
          
          
          setState(() {
            isDialog = true;
            
           
          });
        },
      ),
    );
  }

  Widget _cardActivity(screenWidth, String calle, String estado, String _calle,
      String _estado, String envio, Color color, String textButton) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: GestureDetector(
        onTap: () {
        
        },
        child: Container(
            width: screenWidth,
            height: 140,
            // color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 125.0,
                        height: 25.0,
                        color: Constants.colorMorado,
                        alignment: Alignment.center,
                        child: Text(
                          "ENVIO ESTANDAR",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 125.0,
                        height: 25.0,
                        color: Constants.colorAzulOscuro,
                        alignment: Alignment.center,
                        child: Text(
                          "EVALÚA OFERTAS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            )),
      ),
    );
  }

  Widget _textBlue(String texto) {
    return Text(
      texto,
      style: TextStyle(
          color: Constants.colorAzulOscuro,
          fontWeight: FontWeight.w600,
          fontSize: 16),
    );
  }
}
