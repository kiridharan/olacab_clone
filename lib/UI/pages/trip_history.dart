import 'package:flutter/material.dart';
import 'package:untitled/UI/components/maps_components.dart';

class UberTripHistoryPage extends StatefulWidget {
  const UberTripHistoryPage({super.key});

  @override
  UberTripHistoryPageState createState() => UberTripHistoryPageState();
}

class UberTripHistoryPageState extends State<UberTripHistoryPage> {
  String selectedOption = 'Past'; // default selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // title: const Text('Choose a Trip'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                underline: Container(),
                value: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
                items:
                    <String>['Past', 'Today', 'Last Year'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 18.0,
                  bottom: 10.0,
                ),
                child: Text(
                  "Choose a Trip",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2, // number of trips to display
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('Fare \$10.00'),
                                    Text('Date and Time : 12/2/2001'),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('Location'),
                                    Expanded(
                                      child: Text(
                                        '123 Main St, Anytown USA',
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ],
                                ),
                                const MapsCustomview()
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
