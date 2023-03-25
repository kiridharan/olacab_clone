import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svgimage;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(5.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: Card(
        elevation: 0,
        margin: const EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 0),
        child: SingleChildScrollView(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.98,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      margin: const EdgeInsets.only(left: 5),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: const Color.fromARGB(225, 6, 90, 51),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: MediaQuery.of(context).size.width * 0.94,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                      image:
                                          svgimage.Svg("assets/images/tag.svg"),
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
                                    Icon(Icons.circle,
                                        size: 10, color: Colors.white),
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .42),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                                image: const AssetImage(
                                    "assets/images/openjpg.jpg"),
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height * 0.19,
                                width: MediaQuery.of(context).size.width * 0.30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Card(
                        margin: const EdgeInsets.only(
                            left: 5, right: 5, bottom: 15, top: 15),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        color: const Color.fromARGB(225, 219, 219, 219),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
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
                                    image:
                                        svgimage.Svg("assets/images/lam.svg"),
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
                              bottom:
                                  MediaQuery.of(context).size.height * 0.11),
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
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
                  ),
                  Card(
                    margin: const EdgeInsets.only(
                        left: 5, right: 5, bottom: 15, top: 15),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: const Color.fromARGB(225, 219, 219, 219),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Row(
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
                                image:
                                    svgimage.Svg("assets/images/Package.svg"),
                                fit: BoxFit.cover,
                                width: 50,
                                height: 60,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    margin: const EdgeInsets.only(
                        left: 5, right: 0, bottom: 15, top: 5),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: const Color.fromARGB(225, 219, 219, 219),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Image(
                              image: svgimage.Svg("assets/images/lam.svg"),
                              fit: BoxFit.fitWidth,
                              width: 90,
                              height: 70,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Rentals",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(
                        left: 5, right: 0, bottom: 15, top: 5),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: const Color.fromARGB(225, 219, 219, 219),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Image(
                              image: svgimage.Svg("assets/images/lam.svg"),
                              fit: BoxFit.fitWidth,
                              width: 90,
                              height: 70,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Reserve",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(
                        left: 5, right: 5, bottom: 15, top: 5),
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: const Color.fromARGB(225, 219, 219, 219),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Image(
                              image: svgimage.Svg("assets/images/lam.svg"),
                              fit: BoxFit.fitWidth,
                              width: 90,
                              height: 70,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Intercity",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 5, right: 5, bottom: 15, top: 5),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(225, 219, 219, 219),
                    borderRadius: BorderRadius.circular(60)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.search),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Where To?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          VerticalDivider(
                            width: MediaQuery.of(context).size.height * .025,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 2, right: 2),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(60)),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.height * .035,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(Icons.watch_later),
                                  Text(
                                    "Now",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 5, right: 10, bottom: 0, top: 0),
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(225, 219, 219, 219),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(Icons.star),
                      ),
                      Text(
                        "Choose a saved place",
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: const Divider(
                  thickness: 1,
                  height: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 5, right: 10, bottom: 0, top: 0),
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(225, 219, 219, 219),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(Icons.star),
                      ),
                      const Text(
                        "Set destination on Map",
                      )
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: const Divider(
                  thickness: 1,
                  height: 20,
                ),
              ),
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
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
