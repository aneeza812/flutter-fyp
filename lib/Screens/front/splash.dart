import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/Screens/secongpg/location.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        SizedBox(height: size.height * 0.02),
        Text(
          "WELCOME TO EVORDINATOR",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        SizedBox(height: size.height * 0.03),
        Text(
          "Your Personal Event Service Finder &",
          style:
              TextStyle(fontWeight: FontWeight.normal, color: Colors.black54),
        ),
        SizedBox(height: size.height * 0.01),
        Text(
          "all in One Coordinating Application",
          style:
              TextStyle(fontWeight: FontWeight.normal, color: Colors.black54),
        ),
        SizedBox(height: size.height * 0.01),
        SvgPicture.asset(
          "assets/icons/orange_clock.svg",
          height: size.height * 0.4,
          color: kPrimaryColor,
        ),
        RoundedButton(
          text: "Get Started",
          color: kPrimaryLightColor,
          textColor: Colors.black87,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LocationPg();
                },
              ),
            );
          },
        ),
      ],
    )));
  }
}
