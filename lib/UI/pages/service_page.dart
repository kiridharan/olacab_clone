// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:untitled/UI/components/activity/list_row_card.dart';
import 'package:untitled/UI/components/activity/package_custom.dart';
import 'package:untitled/UI/components/activity/promo_card.dart';
import 'package:untitled/UI/components/maps_components.dart';
import 'package:untitled/controller/activity/activity_utils.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ServicePage createState() => _ServicePage();
}

class _ServicePage extends State<ServicePage> {
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
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomeCardHome(title: "Rentals"),
                      CustomeCardHome(title: "Reserve"),
                      CustomeCardHome(title: "Travel"),
                      CustomeCardHome(title: "Intercity"),
                    ],
                  ),
                ),
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
              const MapsCustomview(),
            ],
          ),
        )),
      ),
    );
  }
}
