import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  HomePageCard({Key? key, required this.val, required this.title})
      : super(key: key);

  int val;
  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 160,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 18,
        color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              val.toString(),
              style: TextStyle(fontSize: 40, color: Colors.yellow),
            ),
            Divider(
              color: Colors.purple,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
