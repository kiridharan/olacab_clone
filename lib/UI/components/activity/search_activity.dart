// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  TextEditingController controller;
  SearchBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

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
        height: MediaQuery.of(context).size.height * .06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.search),

                   Container(
                    margin: const EdgeInsets.only( top: 10),
                     width: MediaQuery.of(context).size.width * .6,
                    height: 20,
                    child: TextFormField(
                      controller: controller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Where To?',
                      ),
                    ),
                  ),

              ],
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(left: 2, right: 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60)),
                child: SizedBox(
                  width: 80,
                  height: 30,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
