import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onborad/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter OnBoard",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "Sadik Saroar",
            body: " ",
            image: Image.asset("images/gub.jpg", width: 350,)
        ),
        PageViewModel(
            title: "Sadik Saroar",
            body: "this is ",
            image: Image.asset("images/sadik.jpg", width: 350,)
        ),
        PageViewModel(
            title: "Fahim Rhaman",
            body: "This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):",
            image: Image.asset("images/Fahim.jpg", width: 350,)
        )
      ],
      onDone: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=> HomePage()));
      },
      done: const Text("Done"),
      showSkipButton: true,
      skip: const Text("Skip"),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.10),
        color: Colors.lightGreenAccent,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        )
      ),
      next: const Icon(Icons.arrow_forward), // Add this line
    );
  }
}
