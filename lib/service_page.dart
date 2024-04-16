import 'package:flutter/material.dart';

class ExpertiseAreaList extends StatelessWidget {
  final List<Map<String, String>> _expertiseAreas = [
    {
      'title': 'Flutter Development',
      'description':
          'Proficient in developing cross-platform mobile applications using Flutter framework.',
    },
    {
      'title': 'UI/UX Design',
      'description':
          'Skilled in designing intuitive and visually appealing user interfaces for Flutter apps.',
    },
    {
      'title': 'Firebase Integration',
      'description':
          'Experience in integrating Firebase services like Firestore, Authentication, and Cloud Functions in Flutter apps.',
    },
    {
      'title': 'State Management',
      'description':
          'Expertise in implementing state management solutions such as Provider, Riverpod, and Bloc in Flutter projects.',
    },
    {
      'title': 'Flutter Packages',
      'description':
          'Contributed to and utilized various Flutter packages to enhance app functionality and performance.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(26, 30, 30, 0.99),
      child: Column(
        children: [
          const Center(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Expertise Area",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // You can adjust the number of columns here
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 2),
              ),
              itemCount: _expertiseAreas.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpertiseAreaItem(
                  title: _expertiseAreas[index]['title']!,
                  description: _expertiseAreas[index]['description']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ExpertiseAreaItem extends StatelessWidget {
  final String title;
  final String description;

  const ExpertiseAreaItem({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(26, 30, 30, 0.99),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
