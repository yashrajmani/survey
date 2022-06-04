import 'package:flutter/material.dart';
import 'package:survey/routes/completedpage.dart';
import 'package:survey/routes/homepage.dart';
import 'package:survey/routes/loginpage.dart';
import 'package:survey/routes/pendingpage.dart';
import 'package:survey/routes/supportpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int index = 0;

  final screen = [
    const HomePage(),
    PendingPage(),
    CompletedPage(),
    const SupportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text(
          "Survey",
          style: TextStyle(fontSize: 25, fontFamily: 'Nunito'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.power_settings_new),
            onPressed: () {
              print("Log Out Pressed!");

              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Confirm:"),
                  content: const Text("Are you sure you want to logout?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInPage()),
                          );
                        },
                        child: const Text("LOGOUT")),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("STAY")),
                  ],
                ),
              );
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Hello:"),
                content: const Text("Welcome to Survey App"),
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
        ),
      ),
      body: screen[index],
      bottomNavigationBar: Container(
        color: Colors.cyan,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
              icon: index == 0
                  ? const Icon(
                      Icons.home,
                      color: Colors.yellow,
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: true,
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
              icon: index == 1
                  ? const Icon(
                      Icons.pending_actions_rounded,
                      color: Colors.redAccent,
                      size: 35,
                    )
                  : const Icon(
                      Icons.pending_actions,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              icon: index == 2
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 35,
                    )
                  : const Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
              icon: index == 3
                  ? const Icon(
                      Icons.support_agent,
                      color: Colors.lime,
                      size: 35,
                    )
                  : const Icon(
                      Icons.support_agent_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
