import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/customdrawer.dart';
import 'package:nviame_app/vistas/estados/estadoEnvioCreador.dart';
import 'package:nviame_app/vistas/estados/estadoEnvioViajero.dart';
import 'package:nviame_app/vistas/ofertas/ofertas_urgentes.dart';
import 'package:nviame_app/vistas/perfil/perfil.dart';

class OfertasHome extends StatefulWidget {
/*   OfertasHome({Key key}) : super(key: key); */

  @override
  _OfertasHomeState createState() => _OfertasHomeState();
}

class _OfertasHomeState extends State<OfertasHome> {
  double screenWidth, screenHeight;

  String _opcionSeleccionada = 'Oferta más baja primero';
  List<String> locations = ['Oferta más baja primero', 'Urgentes primero'];
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
                    padding: const EdgeInsets.only(left: 15.0, right: 17),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _textBlue("OFERTAS RECIBIDAS"),
                        SvgPicture.asset(
                          "assets/ENVIOS-DISPONIBLES-ordenar.svg",
                          height: 22,
                          width: 22,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  containerFilter(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Constants.colorGris),
                        text: "Estás viendo: ",
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Oferta más baja primero',
                              style: TextStyle(
                                  color: Constants.colorAzulOscuro,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  _cardActivity(
                    screenWidth,
                    "Salinas Chicas 918, Bahía Blanca, ARG.",
                    "Sale ahora",
                    "Av. Corrientes 525, Capital Federal, ARG.",
                    "Llega Mie 23 NOV 7:45 h.",
                  ),
                  cardPerson("Juan Pablo Pérez"),
                  cardPerson("Diego Di Carlo"),
                ],
              ),
            )));
  }

  Widget cardPerson(String nombre) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Container(
          width: screenWidth,
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
              Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap:(){
 Navigator.push(
            context, MaterialPageRoute(builder: (context) => Perfil())); 
                    },
                                      child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          //color: Colors.red,

                          width: 70,
                          height: 70,
                          child: Image(
                            image: AssetImage("assets/men.jpg"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: SvgPicture.asset(
                      "assets/PERFIL-USUARIO-usuario-verificado.svg",
                      height: 25,
                      width: 25,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      nombre,
                      style: TextStyle(
                          color: Constants.colorMoradoOscuro,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                          height: 15,
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                          height: 15,
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                          height: 15,
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/OFERTAS-RECIBIDAS-estrella-violeta.svg",
                          height: 15,
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/OFERTAS-RECIBIDAS-estrella-gris.svg",
                          height: 15,
                          width: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        alignment: Alignment.center,
                        color: Constants.colorMorado,
                        height: 20,
                        width: 70,
                        child: Text(
                          "305",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /*

               */
              Expanded(
                child: Container(
                  //width: screenWidth*0.30,
                  //color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          //color: Colors.blue,
                          width: screenWidth * 0.05,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => EstadosEnvios())); 
                        },
                                              child: SvgPicture.asset(
                          "assets/OFERTAS-RECIBIDAS-boton-OK.svg",
                          height: screenHeight * 0.07,
                          width: screenWidth * 0.02,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      SvgPicture.asset(
                        "assets/OFERTAS-RECIBIDAS-boton-ELIMINAR.svg",
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.02,
                      ),
                      Container(
                        width: screenWidth * 0.03,
                        //color:Colors.green
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardActivity(
      screenWidth, String calle, String estado, String _calle, String _estado) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Container(
          width: screenWidth,
          height: 110,
          //color: Colors.blue,
          child: Column(
            children: <Widget>[
              Container(
                //color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Creado el 08/11/2019",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 25,
                        child: Text(
                          "2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Constants.colorMorado,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 80,
                    //color: Colors.red,
                    width: 10,
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      "assets/desde-hasta-normal.svg",
                      //color: Constants.colorMorado,
                      fit: BoxFit.contain,
                      height: 55,
                      width: 75,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
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
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Widget containerFilter() {
    return Container(
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
                  child: _textBlue("Ordenar listado"),
                ),
                Text(
                  "Eliminar filtro",
                  style: TextStyle(color: Constants.colorMorado, fontSize: 13),
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
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(),
                      color: Colors.white,
                      height: 49,
                      width: screenWidth * 0.55,
                      //width: screenWidth * 0.80,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: DropdownButtonFormField<String>(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Constants.colorMorado,
                          ),
                          value: _opcionSeleccionada,
                          itemHeight: 49,
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
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            );
                          }).toList(),
                          hint: Text("Opcion"),
                          onChanged: (opt) {
                            _opcionSeleccionada = opt;
                            setState(() {});
                            if (_opcionSeleccionada ==
                                "Oferta más baja primero") {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OfertasHome()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OfertasUrgentes()));
                            }
                          },
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
                      //padding: EdgeInsets.only(left: 27, right: 27),
                      onPressed: () {},
                      child: Text(
                        "Aplicar",
                        style: TextStyle(fontSize: 13.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ],
            ),
          ),
        ],
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
