import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nviame_app/utils/cons.dart';
import 'package:nviame_app/utils/providers.dart';
import 'package:provider/provider.dart';

class ContainerEnvios extends StatelessWidget {
  const ContainerEnvios({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerInfo = Provider.of<ProviderInfo>(context);

    double screenWidth;

    Size size = MediaQuery.of(context).size;

    screenWidth = size.width;
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 35,
      width: screenWidth,
      // color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("ENVÍOS DISPONIBLES",
                style: TextStyle(
                  color: Constants.colorMorado,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                )),
            Expanded(
              child: Container(),
            ),
            GestureDetector(
              onTap: () {
                print("hola");
                if (providerInfo.escalones) {
                  providerInfo.escalones = false;
                } else {
                  providerInfo.escalones = true;
                } 
              },
              child: SvgPicture.asset(
                "assets/ENVIOS-DISPONIBLES-filtros.svg",
                //color: Constants.colorMorado,
                height: 20,
                width: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              "assets/ENVIOS-DISPONIBLES-ordenar.svg",
              //color: Constants.colorMorado,
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
