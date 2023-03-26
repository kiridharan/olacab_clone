import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgimage;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 0,
              color: Colors.grey.shade200,
              child: const Padding(
                padding: EdgeInsets.all(0),
                child: Image(
                  image: svgimage.Svg("assets/images/lam.svg"),
                  fit: BoxFit.fitWidth,
                  width: 90,
                  height: 70,
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
