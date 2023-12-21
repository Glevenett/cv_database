import 'package:cv/login_page.dart';

import 'homepage.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String passwordErrorText = '';
  String usernameErrorText = '';
  bool _isPasswordVisible = false;

  Future<void> _signup() async {

    // Proceed with signup
    final response = await http.post(
      Uri.parse('http://localhost/cv_login/signup.php'),
      body: {
        'username': usernameController.text,
        'password': passwordController.text,
      },
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      // Display a message to the user based on the response from the server
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(result['message']),
        ),
      );
    } else {
      // Handle errors
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup Page'),
        backgroundColor: Color.fromARGB(244, 27, 27, 27),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('images/login_bg.png'),
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 10),

              TextFormField(
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Colors.white,
                ),
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                  border: OutlineInputBorder(),

                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  } 
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Colors.white,
                ),
                controller: passwordController,
                obscureText: _isPasswordVisible,
                decoration:  InputDecoration(
                    labelText: 'Password',
                  border: OutlineInputBorder(),

                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'RobotoMono',
                    ),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      }, icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off))
                    ),
                    
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (passwordController.text.length < 8) {
                    return 'Password Length should be more than 8 characters';
                  } else if (!RegExp(
                          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$')
                      .hasMatch(value)) {
                    return 'Password must meet the requirement';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 237, 242, 243)),
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    _signup();
                  }
                },
                child: const Text(
                  'Signup ',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Color.fromARGB(255, 69, 71, 71),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Color.fromARGB(255, 69, 71, 71),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 78, 73, 77),
    );
  }
}