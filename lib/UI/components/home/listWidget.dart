import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            margin:
                const EdgeInsets.only(left: 5, right: 10, bottom: 0, top: 0),
            padding: const EdgeInsets.only(left: 2, right: 2),
            decoration: BoxDecoration(
                color: const Color.fromARGB(225, 219, 219, 219),
                borderRadius: BorderRadius.circular(100)),
            child: const Icon(Icons.track_changes),
          ),
          Flexible(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 40,
              margin:
                  const EdgeInsets.only(left: 5, right: 10, bottom: 0, top: 0),
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "KCG COllege of Technology",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "karapakkam, Chennai",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.grey.shade400,
            size: 30,
          )
        ],
      ),
    );
  }
}
