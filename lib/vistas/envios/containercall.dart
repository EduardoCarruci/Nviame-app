import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nviame_app/utils/cons.dart';

class FilterContainer extends StatefulWidget {
  FilterContainer({Key key}) : super(key: key);

  @override
  _FilterContainerState createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      color: Constants.colorGrisNuevo,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         
          children: <Widget>[
            textblue("Filtros"),
            customRows("Sólo en la ciudad donde estoy"),
            textblue("Tipo de Envíos"),
            customRows("Envíos Estándar"),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(right:20.0),
              child: Divider(
                color: Constants.colorGris,
                thickness: 1.0,
                height: 2.0,
              ),
            ),
             customRows("Ver urgentes únicamente"),
          ],
        ),
      ),
    );
  }

  Widget textblue(String texto) {
    return Text(
      texto,
      style: TextStyle(
          color: Constants.colorAzulOscuro,
          fontSize: 14.0,
          fontWeight: FontWeight.bold),
    );
  }

  Widget customRows(String texto) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(texto,style: TextStyle(color:Constants.colorTexto,fontWeight: FontWeight.w500,fontSize: 13.0),),
        Transform.scale(
          scale: 0.5,

          child: CupertinoSwitch(
            activeColor: Constants.colorMorado,
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
