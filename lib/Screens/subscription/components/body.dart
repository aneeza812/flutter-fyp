import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/subscription/components/background.dart';
import 'package:flutter_auth/Screens/supplieraccount/supplier_account.dart';
// import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_small.dart';
import 'package:flutter_auth/components/roundedbutton_small.dart';
import 'package:flutter_auth/constants.dart';
import 'package:rating_dialog/rating_dialog.dart';

import '../../paym.dart';
import '../../plan.dart';
import '../subscription.dart';

class Body extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;
  const Body({Key key, this.title, this.descriptions, this.text, this.img})
      : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    void show() {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Constants.padding),
              ),
              elevation: 0,
              backgroundColor: kPrimaryLightColor,
              child: contentBox(context),
            );
          });
    }

    Size size = MediaQuery.of(context).size;
    return Background(
        child: ListView(children: <Widget>[
      AppBar(
        title: Text(
          'Evordinator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      // SizedBox(height: size.height * 0.03),
      SingleChildScrollView(
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
                SizedBox(height: 20),

                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      child: RoundedButtonSmall(
                        color: kPrimaryLightColor,
                        textColor: Colors.black87,
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
                        // color: kPrimaryLightColor,
                        // textColor: Colors.black87,
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
                SizedBox(height: size.height * 0.03),
                Text(
                  "Ranked higher in suggestions :",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    height: 1,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: size.height * 0.005),
                Text(
                  "3000pkr/month",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    height: 1,
                    fontSize: 13,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: size.height * 0.00),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      size: 40,
                      color: Colors.yellow,
                    ),
                    RoundedButton2(
                      color: kPrimaryLightColor,
                      textColor: Colors.black87,
                      text: "Gold Subscription",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return supplieraccounnt();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                )),
                // SizedBox(height: size.height * 0.03),
                Divider(),
                Text(
                  "Ranked midway in suggestions : ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    height: 1,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: size.height * 0.005),
                Text(
                  "1500pkr/month",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    height: 1,
                    fontSize: 13,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: size.height * 0.00),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      size: 40,
                      color: Colors.grey,
                    ),
                    RoundedButton2(
                      text: "Silver Subscription",
                      color: kPrimaryLightColor,
                      textColor: Colors.black87,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return supplieraccounnt();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                )),
                // SizedBox(height: size.height * 0.03),
                Divider(),
                Text(
                  "For starters : ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    height: 1,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: size.height * 0.005),
                Text(
                  "0pkr for 3 months only",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    height: 1,
                    fontSize: 13,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: size.height * 0.00),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.check_circle, size: 40, color: Colors.black12),
                    RoundedButton2(
                      text: "Starter Subscription",
                      color: kPrimaryLightColor,
                      textColor: Colors.black87,
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
                  ],
                )),
                SizedBox(height: size.height * 0.02),
                RoundedButtonSmall(
                  // color: kPrimaryLightColor,
                  // textColor: Colors.black87,
                  text: "PAY",
                  press: show,
                  // () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) {
                  //         return CustomDialogBox();
                  //       },
                  //     ),
                  //   );
                  // },
                ),
              ],
            ),
          ))
    ]));
  }
}

contentBox(context) {
  return Stack(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(
            left: Constants.padding,
            top: Constants.avatarRadius + Constants.padding,
            right: Constants.padding,
            bottom: Constants.padding),
        margin: EdgeInsets.only(top: Constants.avatarRadius),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(Constants.padding),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Pay now from your jazzcash Account",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
                validator: (val) =>
                    val.length > 3 ? null : 'try to write number',
                decoration: InputDecoration(
                    fillColor: kPrimaryLightColor,
                    prefixIcon: Material(
                      // elevation: 2,
                      // borderRadius: BorderRadius.circular(10),
                      child: Icon(
                        Icons.lock,
                        color: kPrimaryColor,
                      ),
                    ),
                    labelText: 'Account Number',
                    hintText: '*****')),
            TextFormField(
                validator: (val) =>
                    val.length > 3 ? null : 'try to write number',
                decoration: InputDecoration(
                    fillColor: kPrimaryLightColor,
                    prefixIcon: Material(
                      // elevation: 2,
                      // borderRadius: BorderRadius.circular(10),
                      child: Icon(
                        Icons.attach_money,
                        color: kPrimaryColor,
                      ),
                    ),
                    labelText: 'Amount',
                    hintText: '3000')),
            // Text(
            //   "def",
            //   style: TextStyle(fontSize: 14),
            //   textAlign: TextAlign.center,
            // ),
            SizedBox(
              height: 22,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
      Positioned(
        left: Constants.padding,
        right: Constants.padding,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: Constants.avatarRadius,
          child: ClipRRect(
              borderRadius:
                  BorderRadius.all(Radius.circular(Constants.avatarRadius)),
              child: Image.asset("assets/images/jazz.png")),
        ),
      ),
    ],
  );
}
