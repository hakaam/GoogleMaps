import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kLake =
      CameraPosition(target: LatLng(31.5240636,74.3455807), zoom: 14.4746);

  List<Marker> _marker = [];
  final List<Marker> _list = [
    // Marker(
    //     markerId: MarkerId('1'),
    //     position: LatLng(31.4826352,74.0541859),
    //     infoWindow: InfoWindow(title: 'Lahore Pakistan')),
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(31.5240636,74.3455807),
        infoWindow: InfoWindow(title: 'Main Market Gulberg')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(31.5160925,74.3391582),
        infoWindow: InfoWindow(title: 'Hafeez Center')),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(31.5312691,74.3505103),
        infoWindow: InfoWindow(title: 'SadiqTrade Center ')),

    Marker(
        markerId: MarkerId('4'),
        position: LatLng(31.573152,74.3056698),
        infoWindow: InfoWindow(title: 'GCU Lahore')),
    Marker(
        markerId: MarkerId('5'),
        position: LatLng(31.464006,74.4384027),
        infoWindow: InfoWindow(title: 'LGU Lahore')),

    Marker(
        markerId: MarkerId('6'),
        position: LatLng(32.2036249,118.9894839),
        infoWindow: InfoWindow(title: 'JAPAN'))
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,

      ),
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kLake,
          mapType: MapType.normal,
          compassEnabled: true,
          myLocationEnabled: true,
          markers: Set<Marker>.of(_marker),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.location_disabled_outlined),
        onPressed:() async{
          GoogleMapController controller=await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(32.2036249,118.9894839),
              zoom: 14


            )

          ));
          setState(() {




          });


        },

      ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
