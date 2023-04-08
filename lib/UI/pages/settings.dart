import 'package:flutter/material.dart';

class UberSettingsPage extends StatefulWidget {
  const UberSettingsPage({super.key});

  @override
  _UberSettingsPageState createState() => _UberSettingsPageState();
}

class _UberSettingsPageState extends State<UberSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Setting",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // build row of profile image and name and email
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1600000000000-000000000000?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFja2dyb3VuZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Kiridharan K",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.edit),
                ],
              ),
            ),

            _buildSectionHeader('ACCOUNT'),
            _buildAccountOption('Payment', Icons.payment),
            _buildAccountOption('Promotions', Icons.card_giftcard),
            _buildAccountOption('Wallet', Icons.account_balance_wallet),

            _buildSectionHeader('SETTINGS'),
            _buildOption('Notifications', Icons.notifications),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Divider(
                height: 0,
                thickness: 2,
                indent: 2,
              ),
            ),
            _buildOption('Privacy', Icons.privacy_tip),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Divider(
                height: 0,
                thickness: 2,
                indent: 2,
              ),
            ),
            _buildOption('Security', Icons.security),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Divider(
                height: 0,
                thickness: 2,
                indent: 2,
              ),
            ),
            _buildOption('Support', Icons.support),
            const Divider(),
            _buildSectionHeader('LOG OUT'),
            _buildOption('Log Out', Icons.exit_to_app),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildOption(String text, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }

  Widget _buildAccountOption(String text, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
        ),
        child: Text(
          'Edit',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
