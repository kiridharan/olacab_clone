import 'package:flutter/material.dart';
import 'package:untitled/pages/ProfilePage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _SettingPage createState() => _SettingPage();
}

class _SettingPage extends State<SettingsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const ProfilePage()));
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              "Account Settings",
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
            ),
          ),
          body: Card(
            elevation: 0,
            margin:
                const EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 10),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.98,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.08,
                          backgroundImage:
                              const AssetImage("lib/images/user.png"),
                          backgroundColor:
                              const Color.fromARGB(255, 243, 243, 243),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Pritish singh"),
                            Text("+91-8925743185")
                          ],
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Favorites"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.home),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Add Home"),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.work),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Add work"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "More Saved places",
                        style: TextStyle(color: Colors.lightBlueAccent),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, top: 5),
                      child: Text("Trusted Contacts"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.shield_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Manage Trusted Contacts"),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5, top: 5),
                      child: Text(
                          "Share Your trip status with family and friends in a single tap"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.only(left: 10, bottom: 0, top: 5),
                          color: Colors.white,
                          child: Text("safety"),
                        ),
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.only(left: 10, bottom: 0, top: 5),
                          color: Colors.white,
                          child: Text(
                              "Control your safety setting Including ride check notification"),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.only(left: 10, bottom: 0, top: 5),
                          color: Colors.white,
                          child: Text("privacy"),
                        ),
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.only(left: 10, bottom: 0, top: 5),
                          color: Colors.white,
                          child: Text("Manage the data you share with us"),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.only(left: 10, bottom: 0, top: 5),
                          color: Colors.white,
                          child: Text("Security"),
                        ),
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.only(left: 10, bottom: 0, top: 5),
                          color: Colors.white,
                          child: Text(
                              "Control your account security with 2-step verification"),
                        )
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Card(
                          elevation: 0,
                          margin: EdgeInsets.only(left: 10, bottom: 0, top: 5),
                          color: Colors.white,
                          child: Text("Sign out"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
