import 'package:flutter/material.dart';
import 'package:untitled/UI/components/activity/custom_button_profile.dart';
import 'package:untitled/UI/components/activity/custom_list_widget_card.dart';
import 'package:untitled/UI/components/activity/custom_top_part_profile.dart';
import 'package:untitled/UI/components/activity/piechart_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  // ignore: library_pzrivate_types_in_public_api
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  void initState() {
    _nav;
    // TODO: need to add route to the list
    super.initState();
  }

  final _nav = [
    {
      "text": "Messages",
      "Icon": const Icon(Icons.mail),
      "onpress": () {},
    },
    {
      "text": "Send a gift",
      "Icon": const Icon(Icons.card_giftcard),
      "onpress": () {},
    },
    {
      "text": "Settings",
      "Icon": const Icon(Icons.settings),
      "onpress": () {},
    },
    {
      "text": "Earn by driving or delivering",
      "Icon": const Icon(Icons.drive_eta_outlined),
      "onpress": () {},
    },
    {
      "text": "legal",
      "Icon": const Icon(Icons.info),
      "onpress": () {},
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.95,
            // elevation: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileTopWidget(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CardCus(
                      "Help",
                      Icon(Icons.help_outline_outlined),
                    ),
                    CardCus(
                      "Wallet",
                      Icon(Icons.wallet),
                    ),
                    CardCus(
                      "Trips",
                      Icon(Icons.watch_later_rounded),
                    )
                  ],
                ),
                const PieChartCustom(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 10,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .5,
                  child: ListView.builder(
                    itemCount: _nav.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustButton(
                        text: _nav[index]["text"].toString(),
                        icon: _nav[index]["Icon"] as Icon,
                        onPressed: () => _nav[index]["onpress"]!,
                      );
                    },
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
