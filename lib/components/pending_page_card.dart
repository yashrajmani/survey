import 'package:flutter/material.dart';
import 'package:survey/routes/startsurvey.dart';


class PendingPageCard extends StatelessWidget {
  PendingPageCard({Key? key, required this.title, required this.val})
      : super(key: key);

  String title = '';
  String val = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 25, color: Colors.purple),
          ),
          Divider(
            color: Colors.cyan,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          Text(
            "Time to Complete: $val",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        print("START PRESSED");
                        //TODO: IMAGE UPLOAD
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StartSurveyPage()),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 35),
                        maximumSize: const Size(100, 35),
                        primary: Colors.green,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("START"),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.check),
                        ],
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        print("DELAY PRESSED");
                        //TODO: CALLENDER HERE
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text("Delaying:"),
                            content: const Text("You can choose date and time"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("OK")),
                            ],
                          ),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 35),
                        maximumSize: const Size(100, 35),
                        primary: Colors.red,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("DELAY"),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.close),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
