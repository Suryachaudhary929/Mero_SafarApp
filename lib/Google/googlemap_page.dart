import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  // ignore: unused_field
  final Completer<GoogleMapController> _controller = Completer();
  // ignore: unused_field
  static LatLng sourcelocation = const LatLng(37.33500926, -122.03272188);
  // ignore: unused_field
  static LatLng destination = const LatLng(37.33429383, -122.06600055);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search",
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on,
                ),
                label: "My ride",
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: "Inbox",
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
                backgroundColor: Colors.grey),
          ]),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: sourcelocation, zoom: 14.5),
        markers: {
          Marker(
            markerId: MarkerId("source"),
            position: sourcelocation,
          ),
          Marker(
            markerId: MarkerId("destination"),
            position: destination,
          ),
          
        },
      ),
    );
  }
}
