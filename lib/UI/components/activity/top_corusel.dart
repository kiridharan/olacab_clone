import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgimage;

class CoruselOld extends StatefulWidget {
  const CoruselOld({super.key});

  @override
  State<CoruselOld> createState() => _CoruselOldState();
}

class _CoruselOldState extends State<CoruselOld> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            margin: const EdgeInsets.only(left: 5),
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: const Color.fromARGB(225, 6, 90, 51),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width * 0.94,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "You have multiple promos",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Terms Apply  ->",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ]),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: Image(
                            image: svgimage.Svg("assets/images/tag.svg"),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.circle, size: 10, color: Colors.white),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Card(
            margin: const EdgeInsets.only(left: 5),
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: const Color.fromARGB(225, 242, 210, 252),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.94,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: const [
                                Text(
                                  "You have multiple promos",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Terms Apply  ->",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: 0,
                                left: MediaQuery.of(context).size.width * .42),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Icon(Icons.circle,
                                    size: 10, color: Colors.grey),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadiusDirectional.only(
                        topEnd: Radius.circular(15),
                        bottomEnd: Radius.circular(15)),
                    child: Image(
                      image: const AssetImage("assets/images/openjpg.jpg"),
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.19,
                      width: MediaQuery.of(context).size.width * 0.30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
