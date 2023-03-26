import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:untitled/controller/activity/activity_utils.dart';

class MapsCustomview extends StatefulWidget {
  const MapsCustomview({super.key});

  @override
  State<MapsCustomview> createState() => _MapsCustomviewState();
}

class _MapsCustomviewState extends State<MapsCustomview> {
  final ActivityContoller _activityContoller = ActivityContoller();

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  void initState() {
    if (mounted) {
      _activityContoller;
      _controller;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 5, right: 5, bottom: 0, top: 5),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: const Color.fromARGB(225, 219, 219, 219),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.25,
        child: FutureBuilder<LocationData?>(
          future: _activityContoller.currentLocation(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapchat) {
            if (snapchat.hasData) {
              final LocationData currentLocation = snapchat.data;
              return GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                      currentLocation.latitude!, currentLocation.longitude!),
                  zoom: 19.151926040649414,
                ),
                myLocationButtonEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              );
            } else {
              return const Scaffold();
            }
          },
        ),
      ),
    );
  }
}
