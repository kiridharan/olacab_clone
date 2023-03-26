// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'package:untitled/UI/components/activity/list_row_card.dart';
import 'package:untitled/UI/components/activity/package_custom.dart';
import 'package:untitled/UI/components/activity/promo_card.dart';
import 'package:untitled/controller/activity/activity_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final ActivityContoller _activityContoller = ActivityContoller();

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  void initState() {
    // TODO: implement initState
    if (mounted) {
      _activityContoller;
      _controller;
    }
    super.initState();
  }

  @override
  void dispose() {
    // _activityContoller;
    // _controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 0),
        child: SingleChildScrollView(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.98,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top corusel
              // const CoruselOld(),
              const Text(
                "Services",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Go anywhere, get anything",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PromoCard(),
                  CusPackageCard(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomeCardHome(title: "Rentals"),
                  CustomeCardHome(title: "Reserve"),
                  CustomeCardHome(title: "Travel"),
                  CustomeCardHome(title: "Intercity"),
                ],
              ),

              // const ListUitl(),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width * 0.80,
              //   child: const Divider(
              //     thickness: 1,
              //     height: 20,
              //   ),
              // ),
              // const ListUitl(),

              // SizedBox(
              //   width: MediaQuery.of(context).size.width * 0.80,
              //   child: const Divider(
              //     thickness: 1,
              //     height: 20,
              //   ),
              // ),
              const Align(
                alignment: Alignment.topLeft,
                child: Card(
                  margin: EdgeInsets.only(left: 10),
                  elevation: 0,
                  child: Text("Around You"),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.only(left: 5, right: 5, bottom: 0, top: 5),
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: const Color.fromARGB(225, 219, 219, 219),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: FutureBuilder<LocationData?>(
                    future: _activityContoller.currentLocation(),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapchat) {
                      if (snapchat.hasData) {
                        final LocationData currentLocation = snapchat.data;
                        return GoogleMap(
                          mapType: MapType.hybrid,
                          initialCameraPosition: CameraPosition(
                            target: LatLng(currentLocation.latitude!,
                                currentLocation.longitude!),
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
              )
            ],
          ),
        )),
      ),
    );
  }
}
