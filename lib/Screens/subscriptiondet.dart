import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/plan.dart';
import 'package:flutter_auth/Screens/subscription/subscription.dart';
import 'package:flutter_auth/components/roundedbutton_small.dart';

import '../constants.dart';
import 'ownprofile.dart';

class SubDetail extends StatefulWidget {
  @override
  _SubDetailState createState() => _SubDetailState();
}

class _SubDetailState extends State<SubDetail> {
  @override
  Widget build(BuildContext context) {
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
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(5.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10),
                      Text(
                        "Subscription Details",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 15),
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
                              'FREE TRIAL\n for 3 months',
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
                      SizedBox(height: 8),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 55),
                          SizedBox(width: 20),
                          Container(
                            child: RoundedButtonSmall(
                              // color: kPrimaryLightColor,
                              // textColor: Colors.black87,
                              text: "Change",
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
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 8),
                      Row(children: <Widget>[
                        SizedBox(width: 5),
                        Container(
                          child: Text(
                            "Next Payment:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          child: Text(
                            "3 months to go - 8/1/2021",
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono',
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ]),
                      Divider(),
                      SizedBox(height: 8),
                      Row(children: <Widget>[
                        SizedBox(width: 5),
                        Container(
                          child: Text(
                            "Payment Method",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                          child: Text(
                            "Jazz cash - 2828",
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoMono',
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ]),
                    ]))));
  }
}
