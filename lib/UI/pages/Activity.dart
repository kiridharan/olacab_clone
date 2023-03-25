import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ActivityPage createState() => _ActivityPage();

}
class _ActivityPage extends State<Activity> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child:  AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          ),
        ),
      body: Card(
              elevation: 0,
              margin: const EdgeInsets.only(bottom: 5,left: 5,right: 5,top: 0),
              child:SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*0.98,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Card(
                        margin: EdgeInsets.only(left: 10,top: 10),
                        elevation: 0,
                        child:Text("Activity",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        ) ,
                      ),
                      const SizedBox(height: 10,),
                      const Card(
                          margin: EdgeInsets.only(left: 10,top: 10),
                          elevation: 0,
                          child: Text("Upcoming",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          )
                        ),
                        color: Colors.white,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.08,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     const Text(
                                          "You have no upcoming trips",
                                          style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600
                                        ),
                                     ),
                                    Row(
                                      children:const[
                                        Text(
                                          "Reserve your ride",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Icon(Icons.calendar_month_rounded,
                                size: 45,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(left: 10,top: 10),
                        elevation: 0,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                              const Text(
                                "Past",
                                style:
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24
                                ),
                              ),
                            Container(
                              margin: const EdgeInsets.only(left: 5,right: 10,bottom: 0,top:0),
                              padding:const  EdgeInsets.only(left: 2,right: 2),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(225, 219, 219, 219),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: const Icon(Icons.filter_list),
                            ),
                          ],
                        )
                       ,
                      ),
                      const Card(
                        margin: EdgeInsets.only(left: 10,top: 10),
                        elevation: 0,
                        child: Text("You don't have any past activity",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),
      );
  }
}
