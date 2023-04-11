import 'package:flutter/material.dart';
import 'package:untitled/UI/components/wallet/gitf_container.dart';
import 'package:untitled/UI/components/wallet/money_card.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      key: GlobalKey(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Wallet',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const UberCard(),
              const GiftContainer(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Payment Method',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.credit_card,
                    color: Colors.green,
                  ),
                  title: const Text('Payment Method'),
                  onTap: () {
                    // navigate to payment method screen
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Ride Profile',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  title: const Text('Ride Profile'),
                  onTap: () {
                    // navigate to ride profile screen
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Add Vouchers',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ExpansionTile(
                  collapsedIconColor: Colors.black,
                  collapsedTextColor: Colors.black,
                  textColor: Colors.black,
                  iconColor: Colors.yellow,
                  leading: Icon(Icons.card_giftcard),
                  title: Text('Vouchers'),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text('Voucher 1'),
                        subtitle: Text('Expires on 31/12/2023'),
                        trailing: Text('-\$10.00'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text('Voucher 2'),
                        subtitle: Text('Expires on 31/12/2023'),
                        trailing: Text('-\$5.00'),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // add voucher
                    //   },
                    //   child: const Text('Add voucher'),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Promotion',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.local_offer),
                title: const Text('Promotion'),
                onTap: () {
                  // navigate to promotion screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text('Payment Method'),
          trailing: const Icon(Icons.credit_card),
          onTap: () {
            // navigate to payment method screen
          },
        ),
        ListTile(
          title: const Text('Ride Profile'),
          trailing: const Icon(Icons.person),
          onTap: () {
            // navigate to ride profile screen
          },
        ),
        ExpansionTile(
          title: const Text('Vouchers'),
          trailing: const Icon(Icons.card_giftcard),
          children: [
            const ListTile(
              title: Text('Voucher 1'),
              subtitle: Text('Expires on 31/12/2023'),
              trailing: Text('-\$10.00'),
            ),
            const ListTile(
              title: Text('Voucher 2'),
              subtitle: Text('Expires on 31/12/2023'),
              trailing: Text('-\$5.00'),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // add voucher
                },
                child: const Text('Add voucher'),
              ),
            ),
          ],
        ),
        ListTile(
          title: const Text('Promotion'),
          trailing: const Icon(Icons.local_offer),
          onTap: () {
            // navigate to promotion screen
          },
        ),
      ],
    );
  }
}
