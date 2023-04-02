import 'package:flutter/material.dart';
import 'package:google_maps/polygone_screen.dart';
import 'package:google_maps/polyline.dart';
import 'package:google_maps/polyline_two.dart';

import 'convert_latlng_to_address.dart';
import 'custom_marker_info_window.dart';
import 'custom_marker_screen.dart';
import 'custom_marker_with_network_image.dart';
import 'get_user_current_location.dart';
import 'google_places_screen.dart';
import 'home_screen.dart';

class MainnnnnnnnnnnnnnScreen extends StatefulWidget {
  const MainnnnnnnnnnnnnnScreen({Key? key}) : super(key: key);

  @override
  State<MainnnnnnnnnnnnnnScreen> createState() =>
      _MainnnnnnnnnnnnnnScreenState();
}

class _MainnnnnnnnnnnnnnScreenState extends State<MainnnnnnnnnnnnnnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Google Maps',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),

                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('CustomMarkerInfoWindowScreen'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CustomMarkerInfoWindowScreen()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('CustomMarkerScreen'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomMarkerScreen()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('CustomMarkerWithNetworkImage'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CustomMarkerWithNetworkImage()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('GetUserCurrentLocation'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GetUserCurrentLocation()),
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('HomeScreen'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('PolylgoneScreen'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PolylgoneScreen()),
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 10,


                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('PolylineScreen'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PolylineTwoScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
