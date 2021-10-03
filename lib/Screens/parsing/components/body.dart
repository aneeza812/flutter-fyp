import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/parsing/components/background.dart';
import 'package:flutter_auth/Screens/provider_form/form.dart';
import 'package:flutter_auth/Screens/user_form/user_form.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: <Widget>[
          AppBar(),
          SizedBox(height: size.height * 0.08),
          Text(
            "Are you a Service provider or Service seeker?",
            style:
                TextStyle(fontWeight: FontWeight.bold, height: 5, fontSize: 17),
          ),
          SizedBox(height: size.height * 0.05),
          SvgPicture.asset(
            "assets/icons/unknown.svg",
            height: size.height * 0.20,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: "SERVICE SEEKER",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return userform();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "SERVICE PROVIDER",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return form();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
