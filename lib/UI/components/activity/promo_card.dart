import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgimage;

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // crossAxisAlignment: CrossAxisAlignment.center,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Card(
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 15),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.grey.shade200,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Ride",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image(
                      image: svgimage.Svg("assets/images/lam.svg"),
                      fit: BoxFit.fitWidth,
                      width: 90,
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Card(
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.11),
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: const Color.fromARGB(225, 6, 90, 51),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 18,
              child: const Center(
                child: Text(
                  "Promo",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
