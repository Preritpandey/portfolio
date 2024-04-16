import 'package:flutter/material.dart';
import 'package:portfolio/linear.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromRGBO(24, 28, 29, 0.99),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.width / 13,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 5,
              child: Image.asset('assets/about.png'),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.width / 2.5,
            child: const Text(
              "━ About Me",
              style: TextStyle(color: Colors.orange, fontSize: 30),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            left: MediaQuery.of(context).size.width / 2.5,
            child: const Text(
              "Welcome! I'm Prerit a Software developer based in Nepal.\n I specialize in frontend application development for almost every platform such as Mobile \ndev(Android and IOS), Web, Windows, Mac",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width / 2.5,
            child: const Text(
              "Work with me to get your work done properly and proffesionally.",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: MediaQuery.of(context).size.width / 2.5,
            child: const Text("━ Email",
                style: TextStyle(color: Colors.orange, fontSize: 26)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.32,
            left: MediaQuery.of(context).size.width / 2.5,
            child: const Text("pandeyprerit45@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 19)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.44,
            left: MediaQuery.of(context).size.width / 13,
            child: const RotatedBox(
              quarterTurns: -1,
              child: Text(
                "━━ M Y  S K I L L S",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

          ////////
          Positioned(
              left: MediaQuery.of(context).size.width / 5,
              top: MediaQuery.of(context).size.height * 0.44,
              child: const Text(
                "Flutter",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
              left: MediaQuery.of(context).size.width / 5,
              top: MediaQuery.of(context).size.height * 0.478,
              child: LinearIndicator()),

///////JAVA

          Positioned(
              right: MediaQuery.of(context).size.width / 3.3,
              top: MediaQuery.of(context).size.height * 0.44,
              child: const Text(
                "Java",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
              right: MediaQuery.of(context).size.width / 5,
              top: MediaQuery.of(context).size.height * 0.478,
              child: LinearIndicator()),

///////////////////////////

          Positioned(
              left: MediaQuery.of(context).size.width / 5,
              top: MediaQuery.of(context).size.height * 0.55,
              child: const Text(
                "Dart",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height * 0.59,
            child: LinearIndicator(),
          ),

/////////////////////////////////

          Positioned(
              right: MediaQuery.of(context).size.width / 3.3,
              top: MediaQuery.of(context).size.height * 0.55,
              child: const Text(
                "UI UX",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
              right: MediaQuery.of(context).size.width / 5,
              top: MediaQuery.of(context).size.height * 0.59,
              child: LinearIndicator()),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.15,
              left: MediaQuery.of(context).size.width / 13,
              child: const Text(
                "Experience",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width / 13,
              child: const Text(
                "Successfully working in the software industry for past year and have worked \nand collaborated with industry leading companies.It's been a great journey where \nI've learned a lot and become better at what I do. Each project I've worked on has \nnot only made technology better but has also helped me grow as a person and a professional.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    ));
  }
}
