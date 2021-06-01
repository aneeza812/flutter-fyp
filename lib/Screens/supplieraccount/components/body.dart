import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/provider_form/form.dart';
import 'package:flutter_auth/Screens/subscription/components/background.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: ListView(
        children: <Widget>[
          AppBar(
            title: Text(
              'Account Details',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: kPrimaryColor,
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.edit),
                  iconSize: 20,
                  color: Colors.white,
                  tooltip: 'Edit the info',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return form();
                      }),
                    );
                  }),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Icon(
            Icons.person,
            size: 40,
            color: kPrimaryColor,
          ),
          SizedBox(height: size.height * 0.04),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Organization name:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    fontSize: 15,
                    color: Colors.black),
              ),
              Text(
                "abc",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Service:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    fontSize: 15,
                    color: Colors.black),
              ),
              Text(
                "catering service",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Detail:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    fontSize: 15,
                    color: Colors.black),
              ),
              Text(
                "I've got lands for events that i provide on rent purposes",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Budget:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    fontSize: 15,
                    color: Colors.black),
              ),
              Text(
                "75,000pkr/day",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Address:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    fontSize: 15,
                    color: Colors.black),
              ),
              Text(
                "265-N, Model Town, Main Park, Lahore",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Capacity:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1,
                    fontSize: 15,
                    color: Colors.black),
              ),
              Text(
                "min:10,000 people, max:20,000 people",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  height: 1,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
