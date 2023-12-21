import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Information"),
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(
            255, 72, 81, 90), // Set the background color to black
        padding: EdgeInsets.all(70), // Add padding for spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add your personal information here as Text widgets in a Column
            _buildInfoText("Name: Glevenet B. Delos Santos"),
            _buildInfoText("Age: 21 years old"),
            _buildInfoText("Address: Sonquil Sta. Barbara, Pangasinan"),
            _buildInfoText("Place of Birth: Sta. Barbara"),
            _buildInfoText("Citizenship: Filipino"),
            _buildInfoText("Religion: Roman Catholic"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 72, 173, 250), // Set the text color to yellow
          fontSize: 16, // Set the font size
          fontWeight: FontWeight.bold, // Set the font weight to bold
          fontStyle: FontStyle.italic, // Set the font style to italic
        ),
      ),
    );
  }
}
