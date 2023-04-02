import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarkerScreen extends StatefulWidget {
  const CustomMarkerScreen({Key? key}) : super(key: key);

  @override
  State<CustomMarkerScreen> createState() => _CustomMarkerScreenState();
}

class _CustomMarkerScreenState extends State<CustomMarkerScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  Uint8List? markerImages;




  List<String> images = [
    'images/car.png',
    'images/car2.png',
    'images/marker.png',
    'images/marker2.png',
    'images/marker3.png',
    'images/motorcycle.png',
  ];
  // for single marker
  final List<Marker> _markers = <Marker>[
    // Marker(
    //     markerId: MarkerId('12'),
    //     position: LatLng(31.550360882518756, 73.81056464260324))
  ];
  final List<LatLng> _latLang = <LatLng>[
    LatLng(31.550360882518756, 73.81056464260324),
    LatLng(31.464890485684947, 74.10582220426903),
    LatLng(31.723403177155276, 73.98771917960272),
    LatLng(31.47543215487732, 74.50682317174073),
    LatLng(31.386376318844633, 74.35438787246211),
    LatLng(31.847140746190917, 74.04539740095139),
  ];
  static CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(31.47191839705409, 74.27199041339259), zoom: 15);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  

  Future<Uint8List> getBytesFromAssets(String path,int width)async{

    ByteData data= await rootBundle.load(path);
    ui.Codec codec=await ui.instantiateImageCodec(data.buffer.asUint8List(), targetHeight: width);
    ui.FrameInfo fi= await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();


  }

  loadData() async{
    for (int i = 0; i < images.length; i++) {
      
      final Uint8List markerIcon= await getBytesFromAssets(images[i], 100); 
      
      _markers.add(
        Marker(
            markerId: MarkerId(i.toString()),
            position: _latLang[i],
            icon: BitmapDescriptor.fromBytes(markerIcon),
            infoWindow: InfoWindow(title: 'This is title mark' + i.toString())),
      );

      setState(() {


      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Custom Markers'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        mapType: MapType.normal,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        markers: Set<Marker>.of(_markers),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      )),
    );
  }
}
