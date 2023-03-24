import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:untitled/pages/LoginPage.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:untitled/pages/settings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ProfilePage createState() => _ProfilePage();

}
class _ProfilePage extends State<ProfilePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(10),
        child: Card(
         margin: const EdgeInsets.only(top: 10),
          elevation: 0,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Pritish singh",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                      ),),
                      Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
                        color: const Color.fromARGB(255, 243, 243, 243),
                        child: SizedBox(
                          width: 50,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Icon(Icons.star,size: 15,),
                              Text("5.0",style: TextStyle(
                                color: Colors.black,
                              ),)
                            ],
                          ) ,
                        )
                        ,
                      )
                    ],
                  ),
                  CircleAvatar(
                        radius: MediaQuery.of(context).size.width *0.15,
                        backgroundImage:AssetImage("lib/images/user.png"),
                        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
                    color: const Color.fromARGB(255, 243, 243, 243),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/3.5,
                      height: 50,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                              Icon(
                                  Icons.help_outline_outlined
                          ),
                          Text("Help")
                        ],
                      )
                     ,
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
                    color:const Color.fromARGB(255, 243, 243, 243),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/3.5,
                      height: 50,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                              Icons.wallet
                          ),
                          Text("Wallet")
                        ],
                      )
                      ,
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
                    color:const Color.fromARGB(255, 243, 243, 243),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/3.5,
                      height: 50,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                              Icons.watch_later_rounded
                          ),
                          Text("Trips")
                        ],
                      )
                      ,
                    ),
                  ),
                ],
              ),
              Card(
                margin: const EdgeInsets.only(top: 10),
                elevation: 2,
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
                color:const Color.fromARGB(255, 243, 243, 243),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width*0.20,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const  [
                             Text("Saefty chekup",style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                            Text("Boost your safety profile by Turning on \nAdditional feature",style: TextStyle(
                            ),)
                          ],
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle
                          ),
                          padding: const EdgeInsets.all(20),
                          child: const Text("3/3"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                margin:const  EdgeInsets.only(top: 10),
                color: const Color.fromARGB(255, 245, 240, 240),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 10,
                ),
              ),
              Card(
                  elevation: 0,
                  margin:const  EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child:SizedBox(
                    child:Row(
                     children:const[
                       Icon(Icons.mail),
                       SizedBox(
                         width: 20,
                       ),
                       Text("Messages"),
                     ],
                    )
                  ),
              ),
              Card(
                elevation: 0,
                margin:const  EdgeInsets.only(top: 10),
                color: Colors.white,
                child:SizedBox(
                    child:Row(
                      children:const[
                        Icon(Icons.card_giftcard),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Send a gift"),
                      ],
                    )
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const SettingsPage()));
                },
                child:Card(
                  elevation: 0,
                  margin:const  EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child:SizedBox(
                      child:Row(
                        children:const[
                          Icon(Icons.settings),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Settings"),
                        ],
                      )
                  ),
                ) ,
              ),
              Card(
                elevation: 0,
                margin:const  EdgeInsets.only(top: 10),
                color: Colors.white,
                child:SizedBox(
                    child:Row(
                      children:const[
                        Icon(Icons.drive_eta_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Earn a Driving"),
                      ],
                    )
                ),
              ),
              Card(
                elevation: 0,
                margin:const  EdgeInsets.only(top: 10),
                color: Colors.white,
                child:SizedBox(
                    child:Row(
                      children:const[
                        Icon(Icons.info),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Legal"),
                      ],
                    )
                ),
              ),

            ],
          ) ,
        )
        ,
      ),
    );
  }

}