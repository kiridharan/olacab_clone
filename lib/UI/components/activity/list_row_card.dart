import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomeCardHome extends StatelessWidget {
  String title;
  CustomeCardHome({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.20,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 0,
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: SvgPicture.asset(
                  "assets/images/lam.svg",
                  height: 60,
                  width: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                title,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
