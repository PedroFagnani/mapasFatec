import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Mapas extends StatefulWidget {
  @override
  _MapasState createState() => _MapasState();
}

class _MapasState extends State<Mapas> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _posicaoInicial = CameraPosition(
    target: LatLng(-23.600943, -48.05153),
    zoom: 19.5,

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Mapas"),
        actions: [
          IconButton(
            color: Colors.red,
            onPressed: _goToTheBeach,
            icon: Icon(
              Icons.pin_drop,
            ),
          ),
          IconButton(
            onPressed: _suaLocalizacao,
            icon: Icon(
              Icons.home
            )
          )
        ],
      ),
      body: _mapaExemplo(),
    );
  }

  Future <void> _suaLocalizacao() async {
    final GoogleMapController controller = await _controller.future;
    Location location = new Location();

    bool _servicesEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _servicesEnabled = await location.serviceEnabled();
    if (!_servicesEnabled){
      _servicesEnabled = await location.requestService();
      if(!_servicesEnabled){
        return;
      }
    }
    _locationData = await location.getLocation();

    CameraPosition _posicaoGPS = CameraPosition(
      target: LatLng(_locationData.latitude, _locationData.longitude),
      zoom: 19.5,
    );
    controller.animateCamera(CameraUpdate.newCameraPosition(_posicaoGPS));
  }

  _mapaExemplo(){
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.satellite,
        markers: {fatecMark},
        initialCameraPosition: _posicaoInicial,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
    );
  }

  Future <void> _goToTheBeach() async{
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_posicaoPraia));
  }

  static final CameraPosition _posicaoPraia = CameraPosition(
    bearing: 150,
    target: LatLng(-28.128324, -48.641435),
    tilt: 59.44,
    zoom:18.15
  );

  Marker fatecMark = Marker(
    markerId: MarkerId("FatecItape"),
    position: LatLng(-23.600943, -48.05153),
    infoWindow: InfoWindow(title: "Fatec Itape"),
    icon: BitmapDescriptor.defaultMarkerWithHue(
      BitmapDescriptor.hueRed
    ),
  );
}

