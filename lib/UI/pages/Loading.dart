import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:untitled/UI/pages/LoginPage.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  LoadingPageState createState() => LoadingPageState();
}

class LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  void startTimer() async {
    bool isLoading = true;
    Timer.periodic(const Duration(seconds: 5), (t) {
      if (isLoading) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => LoginPage(
                  key: UniqueKey(),
                )));
      }
      // else {
      //   Navigator.of(context).pushReplacement(MaterialPageRoute(
      //       builder: (context) => LoginPage(
      //         key: UniqueKey(),
      //       )));
      //
      // } //set loading
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 43, 52),
      body: Center(
        child: SimpleCircularProgressBar(
          size: 40,
          progressStrokeWidth: 2,
          backStrokeWidth: 2,
          progressColors: [
            Colors.green,
            Colors.blue,
          ],
        ),
      ),
    );
  }
}
