import 'package:flutter/material.dart';

class ListUitl extends StatelessWidget {
  String title;

  ListUitl({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin:
                  const EdgeInsets.only(left: 5, right: 10, bottom: 0, top: 0),
              padding: const EdgeInsets.only(left: 2, right: 2),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(225, 219, 219, 219),
                  borderRadius: BorderRadius.circular(100)),
              child: const Icon(Icons.star),
            ),
            Text(
              title,
            )
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        )
      ],
    );
  }
}
