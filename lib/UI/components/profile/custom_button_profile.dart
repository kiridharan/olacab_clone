import 'package:flutter/material.dart';

class CustButton extends StatelessWidget {
  final String text;
  final Icon icon;

  final Function() onPressed;

  const CustButton(
      {required this.text,
      required this.icon,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        padding: const EdgeInsets.all(9.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 30,
            ),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
          ],
        ),
      ),
    );
  }
}
