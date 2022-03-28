import 'dart:async';

import 'package:flutter/material.dart';

class MapTab extends StatefulWidget {
  const MapTab({Key? key}) : super(key: key);

  @override
  State<MapTab> createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {
  @override
/*  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);*/

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
      child: Column(
        children: [
         /* Expanded(
            flex: 2,
            child: Container(
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ),*/
          Expanded(
            flex: 1,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              elevation: 3.0,
              color: Colors.white,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LRT",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    Text(
                      "Distance: 5.98",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    Text(
                      "Routes",
                      style:
                      TextStyle( fontStyle: FontStyle.italic, fontSize: 15.0),
                    ),
                    Text("> Alabang"),
                    Text("> Makati"),
                    Text("> Shaw"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

/*  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }*/
}
