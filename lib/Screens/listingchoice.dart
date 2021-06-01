import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/form.dart';
import 'package:flutter_auth/Screens/plan.dart';
import 'package:flutter_auth/Screens/provider_form/components/body.dart';
import 'package:flutter_auth/Screens/provider_form/form.dart';
import 'package:flutter_auth/Screens/subscription/subscription.dart';
import 'package:flutter_auth/Screens/user_form/components/body.dart';
import 'package:flutter_auth/components/roundedbutton_small.dart';

import '../constants.dart';
import 'ownprofile.dart';

class Listingchoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var kPrimaryLightColor2 = kPrimaryLightColor;
    return Scaffold(
        appBar: new AppBar(
            title: Text('Evordinator'),
            centerTitle: true,
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Ownprofile();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.person,
                      size: 26.0,
                    ),
                  )),
            ]),
        body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 1.0),
            child: Container(
                alignment: Alignment.center,
                // margin: EdgeInsets.all(20.0),
                // padding: EdgeInsets.all(5.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 25),
                      SizedBox(width: 25),
                      ListTile(
                        title: Text(
                          'Create Listing',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoMono',
                            fontSize: 20,
                          ),
                        ),
                        trailing: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoMono',
                            fontSize: 15,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Ownprofile();
                              },
                            ),
                          );
                        },
                        // trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      Text(
                        "You can now complete your profile by adding categories\n sub categories accordingly so the user may select from\n the list ",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 35),
                          Container(
                            child: RoundedButtonSmall(
                              // color: kPrimaryLightColor,
                              // textColor: Colors.black87,
                              text: "YES",
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
                          ),
                          SizedBox(width: 5),
                          Container(
                            child: RoundedButtonSmall(
                              color: kPrimaryLightColor2,
                              textColor: Colors.black87,
                              text: "NO",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return subscription();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ]))));
  }
}
