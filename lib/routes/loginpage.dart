import 'package:flutter/material.dart';
import 'package:survey/components/bottombar.dart';
import 'package:survey/routes/homepage.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Survey",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Nunito'
          ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: deviceSize.width * 0.7,
                    child: Column(

                      children: [
                        Text("LOGIN",
                        style: TextStyle(fontSize: 40,color: Colors.black),),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.mail,
                                color: Colors.purple,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  'ID Number',
                                  style: TextStyle(color: Colors.black,
                                  fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        ),
                        TextField(
                          style: const TextStyle(
                            color: Color(0xFFb8b9ba),
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.lock,
                                color: Colors.purple,
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  'Password',
                                  style: TextStyle(color: Colors.black,
                                      fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        ),
                        TextField(
                          style: const TextStyle(
                            color: Color(0xFFb8b9ba),
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),


                  SizedBox(
                    width: deviceSize.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {

                        print("LOGIN PRESSED");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        );
                      },
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                          elevation: 4,
                          primary: Colors.purple,
                    ),
                  ),
                  ),
                ],
              ),
      )

        );
  }
}