import 'package:flutter/material.dart';
import 'PersonalInfo.dart';
import 'Skills.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 23, 33),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Educational Background',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 19, 28),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: SingleChildScrollView(
              reverse: true,
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/jayr.jpg',
                      ),
                      radius: 70.0,
                    ),
                  ),
                  Divider(
                    height: 40,
                    color: Colors.white60,
                  ),
                  Center(
                    child: Text(
                      "Elementary:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Ambuetel Elementary School",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Highschool:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Calasiao Comprehensive National High School",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "College:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Philippine College of Science and Technology",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Divider(
                    height: 40,
                    color: Colors.white60,
                  ),
                  const Text(
                    "Social Medias:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 154, 209, 255),
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                    height: 15,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PersonalInfo(),
                            ),
                          )
                        },
                        icon: const Icon(
                          Icons.account_circle,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Education(),
                            ),
                          )
                        },
                        icon: const Icon(
                          Icons.school,
                          color: Colors.blue,
                        ),
                      ), // Replace with your desired icon

                      const SizedBox(width: 20),

                      IconButton(
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Skills(),
                            ),
                          )
                        },
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.blue,
                        ),
                      ), // Replace with your desired icon
                      const SizedBox(
                          width:
                              8.0), // Add some space between the icon and text
                      const Text(
                        '',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
