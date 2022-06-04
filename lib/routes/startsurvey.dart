import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:survey/components/bottombar.dart';
import 'loginpage.dart';
import 'package:path/path.dart' as Path;

class StartSurveyPage extends StatefulWidget {
  const StartSurveyPage({Key? key}) : super(key: key);

  @override
  State<StartSurveyPage> createState() => _StartSurveyPageState();
}

//TODO : Implement the timer thing.
// @override
// void initState()
// {
//   Timer(Duration(seconds: 5), () {
//     Navigator.pop();
//   });
// }



class _StartSurveyPageState extends State<StartSurveyPage> {

File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      } else {
        print("IMAGE FOUND");
      }
      final imageTemporary = await File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print("FAILED : $e");
    }
  }


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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              "Upload Image:",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.red
              ),
            ),

            //TODO : ADD MULTIPLE IMAGES AND UPLOADING OPTION TO SERVER

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                image != null
                    ? Image.file(
                  image!,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                )
                    : SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/applogo.png",
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                ElevatedButton(

                  onPressed: () {
                    print("Gallery Pressed!");
                    pickImage();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50),
                      maximumSize: const Size(100, 50),
                      primary: Colors.purple,
                      onPrimary: Colors.white),
                  child: const Icon(
                    Icons.add_a_photo,
                    size: 50,
                  ),
                ),


              ],
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(onPressed: (){
              print("UPLOAD CLICKED");

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );

            }, child: Text("UPLOAD",
            style: TextStyle(
              fontSize: 30,
            ),)),

          ],
        ),
      ),
    );
  }
}
