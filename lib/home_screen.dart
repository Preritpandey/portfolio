import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.pagesData,
  });

  final List<String> pagesData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 5,
          left: 50,
          child: Text(
            "Prerit",
            style: TextStyle(color: Colors.orange, fontSize: 30),
          ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.height * 0.05,
            top: MediaQuery.of(context).size.height / 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "━ Hello",
                  style: TextStyle(color: Colors.orange.shade400, fontSize: 30),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "I'm",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "  Prerit",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "  Pandey",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                    text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "This is ",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  TextSpan(
                      text: "Prerit Pandey",
                      style: TextStyle(fontSize: 15, color: Colors.orange)),
                  TextSpan(
                      text:
                          ", front end developer with experience in  web , android, Ios, windows application development.\nCurrently usng the flutter as techstack.",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ])),
              ],
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.04,
            right: 10,
            child: SizedBox(
                height: MediaQuery.of(context).size.width / 2,
                child: Image.asset('assets/profile.png'))),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.6,
          left: 25,
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {},
                child: const Text(
                  "DOWNLOAD CV",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
        ),
        Positioned(
            bottom: 50,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    // color: Colors.white,
                    height: 40,
                    child:
                        Image.asset('assets/github.png', color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    // color: Colors.white,
                    height: 40,
                    child:
                        Image.asset('assets/twitter.png', color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    child:
                        Image.asset('assets/facebook.png', color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    // color: Colors.white,
                    height: 40,
                    child:
                        Image.asset('assets/linkedin.png', color: Colors.white),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
