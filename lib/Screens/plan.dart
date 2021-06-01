import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/listingchoice.dart';
import 'package:flutter_auth/Screens/subscription/components/body.dart';
import 'package:flutter_auth/Screens/subscription/subscription.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/Screens/subscription/components/background.dart';
import 'package:flutter_auth/Screens/supplieraccount/supplier_account.dart';
import 'package:flutter_auth/components/roundedbutton_small.dart';

import '../constants.dart';

class plan extends StatefulWidget {
  @override
  _planState createState() => _planState();
}

class _planState extends State<plan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Evordinator'),
          centerTitle: true,
          // actions: <Widget>[
          //   Padding(
          //       padding: EdgeInsets.only(right: 20.0),
          //       child: GestureDetector(
          //         onTap: () {},
          //         child: Icon(
          //           Icons.person,
          //           size: 26.0,
          //         ),
          //       )),
          // ]
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.only(top: 1.0),
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(5.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Text(
                        "Choose a Plan",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "You can Try Free for Three Months ",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      SizedBox(height: 25),
                      SizedBox(width: 25),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          Container(
                            child: RoundedButtonSmall(
                              // color: kPrimaryLightColor,
                              // textColor: Colors.black87,
                              text: "FREE TRIAL",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return plan();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            child: RoundedButtonSmall(
                              color: kPrimaryLightColor,
                              textColor: Colors.black87,
                              text: "MONTHLY",
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
                      SizedBox(height: 25),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius: BorderRadius.circular(5)),
                        child: Card(
                          child: Container(
                            // margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            color: kPrimaryLightColor,
                            width: 300,
                            height: 80,
                            child: Text(
                              'FREE\n for 3 months',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                          child: ListTile(
                        // contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        title: Text(
                          'Full Access',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Text(
                          'This access is provied for three months only',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                        leading: Icon(
                          Icons.check,
                          color: kPrimaryColor,
                          size: 28,
                        ),
                        // trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return SignUpScreen();
                          //     },
                          //   ),
                          // );
                        },
                      )),
                      Card(
                          child: ListTile(
                        title: Text(
                          'Features',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Text(
                          'All the features are enabled for this trial period',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                        leading: Icon(
                          Icons.check,
                          color: kPrimaryColor,
                          size: 28,
                        ),
                        // trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return SignUpScreen();
                          //     },
                          //   ),
                          // );
                        },
                      )),
                      Card(
                          child: ListTile(
                        title: Text(
                          'Notify',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Text(
                          'You will be notified at the end of this trial to pay',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                        leading: Icon(
                          Icons.check,
                          color: kPrimaryColor,
                          size: 28,
                        ),
                        // trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return SignUpScreen();
                          //     },
                          //   ),
                          // );
                        },
                      )),
                      RoundedButtonSmall(
                        // color: kPrimaryLightColor,
                        // textColor: Colors.black87,
                        text: "GO FOR TRIAL",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Listingchoice();
                              },
                            ),
                          );
                        },
                      ),
                    ]))));
  }
}
