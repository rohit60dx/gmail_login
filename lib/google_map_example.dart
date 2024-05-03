import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map_Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Map_ExampleState();
  }
}

class Map_ExampleState extends State<Map_Example> {
  @override
  Widget build(BuildContext context) {
    GoogleMapController mapController;
    return Scaffold(
      appBar: AppBar(
          title: Text("Google Map Demo"),
          backgroundColor: Colors.indigo,
          shadowColor: Colors.black),
      body: GoogleMap(
        buildingsEnabled: true,
        polylines: Set(),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(30.71326846072947, 76.70916551051737),
          zoom: 11.0,
        ),
        mapType: MapType.satellite,
      ),
    );
  }
}
