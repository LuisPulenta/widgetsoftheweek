import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  var location = Location();
  LocationData? currentLocation;

//--------------------------------------------------------------
  @override
  void initState() {
    super.initState();
    getLocation();
  }

//--------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            currentLocation != null
                ? Text('Latitud: ${currentLocation!.latitude}')
                : Container(),
            currentLocation != null
                ? Text('Longitud: ${currentLocation!.longitude}')
                : Container(),
            currentLocation != null
                ? Text('Altitud: ${currentLocation!.altitude}')
                : Container(),
          ],
        ),
      ),
    );
  }

//--------------------------------------------------------------------
  void getLocation() async {
    var serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    var _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    currentLocation = await location.getLocation();
    setState(() {});
  }
}
