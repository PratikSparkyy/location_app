import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State <MapPage> createState() =>  MapPageState();
}

class  MapPageState extends State <MapPage> {

  static const LatLng _KadaGhari = LatLng(27.6929,85.3748);
  static const LatLng _siphal = LatLng(27.7134, 85.3408);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: CameraPosition(target:_KadaGhari, zoom:20),
      markers: {
        Marker(markerId: MarkerId("_currentlocation"), icon: BitmapDescriptor.defaultMarker, position: _KadaGhari),
        Marker(markerId: MarkerId("_sourcelocation"), icon: BitmapDescriptor.defaultMarker, position: _siphal)
      },),
    
    );
  }

  
}