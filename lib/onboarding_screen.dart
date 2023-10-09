import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:newscreen2/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final key = GlobalKey();

  void _introductionEnding() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => Loginscreen()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: IntroductionScreen(
        key: key,
        pages: [
          PageViewModel(
            title: "Welcome to MyApp",
            body: "This is the first screen.",
            image: Image.asset("assets/images/constranst.jpg"),
            decoration: const PageDecoration(
              pageColor: Colors.blue,
            ),
          ),
          PageViewModel(
            title: "MY ACCOUNT",
            body: "PLEASE LOGIN YOUR ACCOUNT",
            image: Image.asset("assets/images/keyboard.png"),
            decoration: const PageDecoration(
              pageColor: Colors.blue,
            ),
          ),
          PageViewModel(
            title: "MY CREATION",
            body: "My first creation",
            image: Image.asset("assets/images/upright.jpg"),
            decoration: const PageDecoration(
              pageColor: Colors.blue,
            ),
          ),
        ],
        onDone: _introductionEnding,
        showBackButton: true,
        back: Icon(Icons.arrow_back_ios),
        //skip: Text('skip'),
        showSkipButton: false,
        done: Text('done'),
        next: Text('next'),
        showDoneButton: true,
        showNextButton: true,
      ),
    );
  }
}
