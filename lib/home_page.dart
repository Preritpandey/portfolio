import 'package:flutter/material.dart';
import 'package:portfolio/about_page.dart';
import 'package:portfolio/contact_page.dart';
import 'package:portfolio/home_screen.dart';
import 'package:portfolio/service_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController(initialPage: 0);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> pagesData = [
      'HOME',
      'ABOUT',
      'SERVICE',
      'CONTACT',
      'BLOG',
    ];

    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 30, 30, 0.99),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              destinations: List.generate(pagesData.length, (index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          controller.animateToPage(index,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        },
                        child: Text(
                          pagesData[index],
                          style: const TextStyle(color: Colors.white),
                        ))
                  ],
                );
              }),
            ),
          ),
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: controller,
              children: [
                HomeScreen(pagesData: pagesData),
                const AboutPage(),
                ExpertiseAreaList(),
                ContactMePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
