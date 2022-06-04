import 'package:flutter/material.dart';

class CompletedPageCard extends StatelessWidget {
  CompletedPageCard({Key? key, required this.title, required this.val})
      : super(key: key);

  String title = '';
  String val = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.stars,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 25, color: Colors.purple),
                ),
              ],
            ),
            Divider(
              color: Colors.cyan,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Text(
              "Good Job ! Completed $val",
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
