import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class currentLocation extends StatefulWidget {
  const currentLocation({Key? key}) : super(key: key);

  

  @override
  State<currentLocation> createState() => _currentLocationState();
}

class _currentLocationState extends State<currentLocation> {
  late LocationData _currentLocation;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    Location location = Location();

   
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _currentLocation = await location.getLocation();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (_currentLocation == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return SfMaps(
      layers: [
        MapTileLayer(
          initialFocalLatLng: MapLatLng(_currentLocation.latitude!, _currentLocation.longitude!),
          initialZoomLevel: 5,
          initialMarkersCount: 1,
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          markerBuilder: (BuildContext context, int index) {
            return MapMarker(
              latitude: _currentLocation.latitude!,
              longitude: _currentLocation.longitude!,
              size: const Size(20, 20),
              child: Icon(
                Icons.location_on,
                color: Colors.red[800],
              ),
            );
          },
        ),
      ],
    );
  }
}

