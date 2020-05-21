import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nviame_app/utils/barra.dart';
import 'package:nviame_app/utils/cons.dart';

class MapOferta extends StatefulWidget {
  @override
  _MapOfertaState createState() => _MapOfertaState();
}

class _MapOfertaState extends State<MapOferta> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;
  static final CameraPosition _position1 = CameraPosition(
      target: LatLng(45.521563, -122.677433), tilt: 59.440, zoom: 11.0);
  double screenHeight;

  Future<void> _gotoPosition1() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_position1));
  }

  _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  Widget button(Function function, IconData icon) {
    return FloatingActionButton(
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      backgroundColor: Colors.blue,
      child: Icon(
        icon,
        size: 36.0,
      ),
    );
  }

  _onMapTypeButtonPrssed() {
    _currentMapType =
        _currentMapType == MapType.normal ? MapType.satellite : MapType.normal;
    setState(() {});
  }

  _onAddMarkerButtonPressed() {
    _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(title: "Titulo", snippet: "Snippet"),
        icon: BitmapDescriptor.defaultMarker));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    return SafeArea(
      child: Scaffold(
        /*  appBar: CustomBar(
          appBar: AppBar(),
        ), */
        body: Column(
          children: <Widget>[
            Container(
              height: screenHeight * 0.85,
              width: double.infinity,
              //color: Colors.red,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: screenHeight * 0.80,
                    width: double.infinity,
                    //color: Colors.blue,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition:
                          CameraPosition(target: _center, zoom: 11.0),
                      mapType: _currentMapType,
                      markers: _markers,
                      onCameraMove: _onCameraMove,
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    right: 30,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Container(
                            //color: Colors.red,
                            width: 60,
                            height: 60,
                            child: Image(
                              image: AssetImage("assets/men.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 4,
                          child: ClipOval(
                            child: Container(
                              color: Colors.red,
                              height: 12.0,
                              width: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 30.0,
                    child: Text(
                      "Tracking en tiempo real",
                      style: TextStyle(
                          color: Constants.colorAzulOscuro,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  ),

                  /*   Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: <Widget>[
                          button(_onAddMarkerButtonPressed, Icons.add_location),
                          /* button(_onMapTypeButtonPrssed, Icons.map),
                            SizedBox(
                              height: 15.0,
                            ),
                            
                            SizedBox(
                              height: 15.0,
                            ),
                            button(_gotoPosition1, Icons.location_searching), */
                        ],
                      ),
                    ),
                  ),
                 */
                ],
              ),
            ),
            /*   
                  */
            Container(
              height: screenHeight * 0.10,
              width: double.infinity,
              //color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/TRACKING-velocidad.svg",
                      height: 25.0,
                      width: 25.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("134 km/h", style: TextStyle(fontSize: 13.0)),
                    SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset(
                      "assets/TRACKING-tiempo-estimado-arribo.svg",
                      height: 25.0,
                      width: 25.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "2 h 10'",
                      style: TextStyle(fontSize: 13.0),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/menuLateral.svg",
                        color: Constants.colorMorado,
                        fit: BoxFit.contain,
                        height: 12.0,
                        width: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
