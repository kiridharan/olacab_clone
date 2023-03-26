import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 5),
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(225, 219, 219, 219),
          borderRadius: BorderRadius.circular(60)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .05,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Where To?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Row(
              children: [
                VerticalDivider(
                  width: MediaQuery.of(context).size.height * .025,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 2, right: 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * .035,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.watch_later),
                        Text(
                          "Now",
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
