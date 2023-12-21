import 'package:flutter/material.dart';
import 'PersonalInfo.dart';
import 'Education.dart';
import 'Skills.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 23, 33),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Curriculom Vitae',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 37, 55),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/jayr.jpg',
                ),
                radius: 70.0,
              ),
            ),
            const Divider(
              height: 50,
              color: Colors.white60,
            ),
            const Center(
              child: Text(
                "Name:",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            const Center(
              child: Center(
                child: Text(
                  "JAY-R H. JOVES",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            const Center(
              child: Text(
                "Position:",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            const Center(
              child: Text(
                "IT",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Divider(
              height: 30,
              color: Colors.white60,
            ),
            const SizedBox(
              width: 20,
              height: 0,
            ),
            const Text(
              "Contact Me at:",
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
            const Row(
              children: [
                Icon(Icons.telegram,
                    color: Color.fromARGB(
                        255, 0, 149, 255)), // Replace with your desired icon
                SizedBox(width: 8.0),

                // Add some space between the icon and text
                Text(
                  '@jayrjoves',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.mail,
                    color: Color.fromARGB(
                        255, 0, 149, 255)), // Replace with your desired icon
                SizedBox(
                    width: 8.0), // Add some space between the icon and text
                Text(
                  'jayrjoves@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.call,
                    color: Color.fromARGB(
                        255, 0, 149, 255)), // Replace with your desired icon
                SizedBox(
                    width: 8.0), // Add some space between the icon and text
                Text(
                  '09123456978',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const Divider(
              height: 50,
              color: Colors.white60,
            ),
            const SizedBox(
              width: 20,
              height: 0,
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
                    width: 8.0), // Add some space between the icon and text
                const Text(
                  '',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
