import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/plan.dart';
import 'package:flutter_auth/Screens/termservices.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter/gestures.dart';
import '../constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 20.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
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
                        "REGISER NOW",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "(Complete your Profile)",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 25),
                      // RoundedInputField(
                      //   hintText: "Your Email",
                      //   icon: Icons.mail,
                      //   onChanged: (value) {},
                      // ),
                      // RoundedInputField(
                      //   hintText: "Your Email",
                      //   icon: Icons.mail,
                      //   onChanged: (value) {},
                      // ),
                      TextFormField(
                          validator: (val) =>
                              val.length > 3 ? null : 'try to write whole name',
                          decoration: InputDecoration(
                              fillColor: kPrimaryLightColor,
                              prefixIcon: Material(
                                // elevation: 2,
                                // borderRadius: BorderRadius.circular(20),
                                child: Icon(
                                  Icons.mail,
                                  color: kPrimaryColor,
                                ),
                              ),
                              labelText: 'Email',
                              hintText: 'write your mailing address')),
                      TextFormField(
                          validator: (val) =>
                              val.length > 3 ? null : 'try to write whole name',
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
                              labelText: 'Password',
                              hintText: 'weak password')),
                      TextFormField(
                          validator: (val) =>
                              val.length > 3 ? null : 'try to write whole name',
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
                              labelText: 'Confirm Password',
                              hintText: 'write the same password as above')),
                      TextFormField(
                          validator: (val) =>
                              val.length > 3 ? null : 'try to write whole name',
                          decoration: InputDecoration(
                              fillColor: kPrimaryLightColor,
                              prefixIcon: Material(
                                // elevation: 2,
                                // borderRadius: BorderRadius.circular(10),
                                child: Icon(
                                  Icons.person,
                                  color: kPrimaryColor,
                                ),
                              ),
                              labelText: 'First Name',
                              hintText: 'name here')),
                      TextFormField(
                          validator: (val) =>
                              val.length > 3 ? null : 'try to write whole name',
                          decoration: InputDecoration(
                              fillColor: kPrimaryLightColor,
                              prefixIcon: Material(
                                // elevation: 2,
                                // borderRadius: BorderRadius.circular(10),
                                child: Icon(
                                  Icons.person_outline,
                                  color: kPrimaryColor,
                                ),
                              ),
                              labelText: 'Last Name',
                              hintText: 'your sirname here')),
                      TextFormField(
                          validator: (val) =>
                              val.length > 3 ? null : 'try to write whole name',
                          decoration: InputDecoration(
                              fillColor: kPrimaryLightColor,
                              prefixIcon: Material(
                                // elevation: 2,
                                // borderRadius: BorderRadius.circular(10),
                                child: Icon(
                                  Icons.call,
                                  color: kPrimaryColor,
                                ),
                              ),
                              labelText: 'Phone Number',
                              hintText: 'working number should be given')),
                      TextFormField(
                        validator: (val) =>
                            val.length > 3 ? null : 'try to write whole name',
                        decoration: InputDecoration(
                          // fillColor: kPrimaryLightColor,
                          suffixIcon: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Icon(
                              Icons.file_upload,
                              color: kPrimaryColor,
                            ),
                          ),
                          labelText: 'Upload Photo',
                          // hintText: 'weak password')
                        ),
                      ),
                      // RichText(
                      //   text: TextSpan(
                      //     style: defaultStyle,
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //           text: 'By clicking Sign Up, you agree to our '),
                      //       TextSpan(
                      //           text: 'Terms of Service',
                      //           style: linkStyle,
                      //           recognizer: TapGestureRecognizer()
                      //             ..onTap = () {
                      //               Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                   builder: (context) {
                      //                     return TermsServices();
                      //                   },
                      //                 ),
                      //               );
                      //             }),
                      //       TextSpan(text: ' and that you have read our '),
                      //       TextSpan(
                      //           text: 'Privacy Policy',
                      //           style: linkStyle,
                      //           recognizer: TapGestureRecognizer()
                      //             ..onTap = () {
                      //               print('Privacy Policy"');
                      //             }),
                      //     ],
                      //   ),
                      // ),
                      CheckboxListTile(
                        // secondary: const Icon(Icons.add_alert),
                        title: const Text(
                          'I agree to Evordinator privacy policy',
                          style: TextStyle(fontSize: 14, color: Colors.black45),
                        ),
                        // subtitle: Text('Ringing after 12 hours'),
                        value: this.valuefirst,
                        onChanged: (bool value) {
                          setState(() {
                            this.valuefirst = value;
                          });
                        },
                      ),
                      RoundedButton(
                        text: "REGISTER",
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
                    ]))));
  }
}
