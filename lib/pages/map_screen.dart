import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'locationmap.dart' as lan;


class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  static final CameraPosition _currentposition = CameraPosition(target: LatLng(lan.longitute,lan.latitute), zoom: 11.5);

  late GoogleMapController _googleMapController;

  final List<Marker> _markers = <Marker>[Marker(markerId: const MarkerId('1'), position: LatLng(lan.longitute,lan.latitute))];
  @override
  void dispose(){
    _googleMapController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: true,
        zoomControlsEnabled: false,
        initialCameraPosition: _currentposition,
        markers: Set<Marker>.of(_markers),
        onMapCreated: (controller) => _googleMapController = controller,

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        onPressed: () => _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_currentposition),
        ),
      ),
    );
  }
}