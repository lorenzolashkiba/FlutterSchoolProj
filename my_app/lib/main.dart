import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleMapController? mapController;
  Location location = Location();
  List<LatLng> trackPoints = [];

  @override
  void initState() {
    super.initState();
    location.onLocationChanged.listen((LocationData currentLocation) {
      if (mapController != null) {
        mapController!.animateCamera(CameraUpdate.newLatLng(LatLng(
          currentLocation.latitude!,
          currentLocation.longitude!,
        )));
      }
      setState(() {
        trackPoints.add(LatLng(
          currentLocation.latitude!,
          currentLocation.longitude!,
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Maps Tracking'),
        ),
        body: GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            setState(() {
              mapController = controller;
            });
          },
          initialCameraPosition: const CameraPosition(
            target: LatLng(0, 0),
            zoom: 14.0,
          ),
          polylines: {
            Polyline(
              polylineId: const PolylineId('track_line'),
              points: trackPoints,
              color: Colors.blue,
              width: 3,
            ),
          },
        ),
      ),
    );
  }
}
