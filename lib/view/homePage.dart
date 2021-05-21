import 'package:flutter/material.dart';
import 'package:flutter_py/widgets/customTextField.dart';

// Controllers
final titleTextController = TextEditingController();
final placeTextController = TextEditingController();
final communityTextController = TextEditingController();
final dateTextController = TextEditingController();
final timeTextController = TextEditingController();
final categoryTextController = TextEditingController();
final modeTextController = TextEditingController();
final countryTextController = TextEditingController();
final cityTextController = TextEditingController();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: AddEventForm(),
            ),
            Expanded(
              child: DisplayEvents(),
            )
          ],
        ),
      ),
    );
  }
}

class AddEventForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomTextField(
            screenSize: screenSize,
            controller: titleTextController,
            hintText: "Enter Title",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: placeTextController,
            hintText: "Enter Place",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: communityTextController,
            hintText: "Enter Community Name",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: dateTextController,
            hintText: "yyyy-mm-dd",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: timeTextController,
            hintText: "hh:mm:ss",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: categoryTextController,
            hintText: "Hands-on/Workshop/Bootcamp...",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: modeTextController,
            hintText: "Physical/Online",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: countryTextController,
            hintText: "Enter Country",
          ),
          CustomTextField(
            screenSize: screenSize,
            controller: cityTextController,
            hintText: "Enter City ",
          ),
          SizedBox(
            height: screenSize.height * 0.055,
            width: screenSize.width * 0.3,
            child: MaterialButton(
              color: Colors.red[800],
              onPressed: () {},
              child: Text(
                "Add Event",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontSize: 16.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DisplayEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
