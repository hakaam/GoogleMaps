import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetUserCurrentLocation extends StatefulWidget {
  const GetUserCurrentLocation({Key? key}) : super(key: key);

  @override
  State<GetUserCurrentLocation> createState() => _GetUserCurrentLocationState();
}

class _GetUserCurrentLocationState extends State<GetUserCurrentLocation> {
  final Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kLake =
      CameraPosition(target: LatLng(31.5240636, 74.3455807), zoom: 14);

  // List<Marker> _marker = [];
  final List<Marker> _markers = <Marker>[
    // Marker(
    //     markerId: MarkerId('1'),
    //     position: LatLng(31.4826352,74.0541859),
    //     infoWindow: InfoWindow(title: 'Lahore Pakistan')),
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(31.5240636, 74.3455807),
        infoWindow: InfoWindow(title: 'Main Market Gulberg')),
  ];
  loadData(){
    getUserCurrentLocation().then((value) async {
      print('my current location');
      print(value.latitude.toString() + "" + value.longitude.toString());
      _markers.add(
        Marker(
            markerId: MarkerId('2'),
            position: LatLng(value.latitude, value.longitude),
            infoWindow: InfoWindow(title: 'My Current Location')),
      );
      CameraPosition cameraPosition = CameraPosition(
          zoom: 14, target: LatLng(value.latitude, value.longitude));
      final GoogleMapController controller = await _controller.future;
      controller
          .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {});
    });


  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {});

    return await Geolocator.getCurrentPosition();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get User Current Location'),

      ),
      body: GoogleMap(
        initialCameraPosition: _kLake,
        markers: Set<Marker>.of(_markers),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          loadData();

        },
        child: Icon(Icons.local_activity),
      ),
    );
  }
}
