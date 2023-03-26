import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgimage;

class CusPackageCard extends StatelessWidget {
  const CusPackageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 15),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey.shade200,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Package",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image(
                  image: svgimage.Svg("assets/images/Package.svg"),
                  fit: BoxFit.cover,
                  width: 50,
                  height: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
