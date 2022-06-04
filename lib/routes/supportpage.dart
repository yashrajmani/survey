import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(topLeft:const Radius.circular(20),topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Contact Support :",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Thanks for reaching us \nWe are there to \nhelp you ! ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow,

                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Click to Chat on WhatsApp",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,

                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("WHATSAPP CLICKED");
                      //TODO: IMPLEMENT WHATSAPP BOT CHAT HERE
                      showDialog(context: context, builder: (context)=> AlertDialog(
                        title:const Text("WhatsApp:"),
                        content: const Text("Opening WhatsApp to : +919997652456"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: const Text("OK")),
                        ],
                      ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50),
                      maximumSize: const Size(100, 50),
                      primary: Colors.green,
                    ),
                    child: const Icon(Icons.whatsapp)),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Click to Call",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,

                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Phone CLICKED");
                    showDialog(context: context, builder: (context)=> AlertDialog(
                      title:const Text("Phone:"),
                      content: const Text("Calling to : +919997652456"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("OK")),
                      ],
                    ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 50),
                    maximumSize: const Size(100, 50),
                    primary: Colors.red,
                  ),
                  child: const Icon(Icons.phone),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "We are open 24x7",
                  style:  TextStyle(
                    fontSize: 18,
                    color: Colors.yellow,

                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
