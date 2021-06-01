import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/listingchoice.dart';
import 'package:flutter_auth/Screens/listingview.dart';
import 'package:flutter_auth/Screens/privacypolicy.dart';
import 'package:flutter_auth/Screens/provider_form/form.dart';
import 'package:flutter_auth/Screens/secongpg/location.dart';
import 'package:flutter_auth/Screens/subscription/subscription.dart';
import 'package:flutter_auth/Screens/subscriptiondet.dart';
import 'package:flutter_auth/Screens/termservices.dart';
import 'package:flutter_auth/components/roundedbutton_small.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'Login/login_screen.dart';
import 'Signup/signup_screen.dart';

class Ownprofile extends StatefulWidget {
  @override
  _OwnprofileState createState() => _OwnprofileState();
}

class _OwnprofileState extends State<Ownprofile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                            return form();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.edit,
                      size: 26.0,
                    ),
                  )),
            ]),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: new Text('Aneeza Maroof'),
                  accountEmail: new Text('aneezamaroof@gmail.com'),
                  currentAccountPicture: new CircleAvatar(
                      backgroundImage:
                          new NetworkImage('https://i.pravatar.cc/300'))),
              // Card(
              //   child: Container(
              //       color: kPrimaryLightColor,
              //       width: 300,
              //       height: 80,
              //       child: Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: <Widget>[
              //             SvgPicture.asset(
              //               "assets/icons/orange_clock.svg",
              //               height: size.height * 0.10,
              //               color: kPrimaryColor,
              //             ),
              //           ])),
              // ),
              SizedBox(height: size.height * 0.02),
              Card(
                child: ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.black54,
                    size: 20,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LocationPg();
                        },
                      ),
                    );
                  },

                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                  child: ListTile(
                title: Text(
                  'Create Listing',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                leading: Icon(
                  Icons.add,
                  color: Colors.black54,
                  size: 20,
                ),
                // trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Listingchoice();
                      },
                    ),
                  );
                },
              )),
              Card(
                child: ListTile(
                  title: Text(
                    'View Listing',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  leading: Icon(
                    Icons.list,
                    color: Colors.black54,
                    size: 20,
                  ),
                  // trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Listingview();
                        },
                      ),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Subscription',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  leading: Icon(
                    Icons.check,
                    color: Colors.black54,
                    size: 20,
                  ),
                  // trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SubDetail();
                        },
                      ),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Terms of services',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  leading: Icon(
                    Icons.format_list_bulleted,
                    color: Colors.black54,
                    size: 20,
                  ),
                  // trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TermsServices();
                        },
                      ),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  leading: Icon(
                    Icons.security,
                    color: Colors.black54,
                    size: 20,
                  ),
                  // trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Privacypolicy();
                        },
                      ),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  leading: Icon(
                    Icons.link_off,
                    color: Colors.black54,
                    size: 20,
                  ),
                  // trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          SizedBox(
            height: 140,
            width: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              alignment: Alignment.center,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  // color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.fromLTRB(15, 100, 15, 15),
              child: Column(children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(35, 0, 35, 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 10,
                            color: kPrimaryColor.withOpacity(0.15))
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/gourmet.png",
                          ),
                          fit: BoxFit.cover)),
                ),
                Container(
                    // padding: EdgeInsets.all(15),
                    // margin: EdgeInsets.only(top: 15),
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(5.0)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("Gourmet Bakers",
                                    style: Theme.of(context).textTheme.title),
                                ListTile(
                                  contentPadding: EdgeInsets.only(left: 35),
                                  title: Text(
                                      "All kind of sweet dishes for any\n occassion"),
                                ),
                                Divider(),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      "Personal:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      "First Name:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      "Aneeza",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      "Last Name:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      "Maroof",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      "Mail:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      "Aneezamaroof@gmail.com",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(children: <Widget>[
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      "Phone:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      "0331 4571024",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ]),
                                Divider(),
                                Row(children: <Widget>[
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      "Subscription:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ]),
                                SizedBox(height: 10),
                                Row(children: <Widget>[
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      "Free Trial For Three months",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ]),
                                Divider(),
                                Row(
                                  children: <Widget>[
                                    // SizedBox(width: 35),
                                    Container(
                                      child: RoundedButtonSmall(
                                        // color: kPrimaryLightColor,
                                        // textColor: Colors.black87,
                                        text: "View Listing",
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
                                        color: kPrimaryLightColor,
                                        textColor: Colors.black87,
                                        text: "Delete Account",
                                        press: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return LoginScreen();
                                              },
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),

                                //             Container(
                                //               decoration: BoxDecoration(
                                //                   color: Colors.grey[50],
                                //                   borderRadius: BorderRadius.circular(5)),
                                //               child: Column(
                                //                 children: <Widget>[
                                //                   ListTile(
                                //                     title: Text(
                                //                       "Personal:",
                                //                       style: TextStyle(
                                //                         fontWeight: FontWeight.bold,
                                //                         fontFamily: 'RobotoMono',
                                //                         fontSize: 18,
                                //                       ),
                                //                     ),
                                //                     // subtitle: Text(
                                //                     //     "Fill a table with chocolate-dunked goodies like Rice Krispies bars and caramel apples. Or have a chocolate fountain with dippers like fruit skewers, bite-size brownies and soft pretzels . And if chocolate brown doesn't fit your wedding palette, choose a different one"),
                                //                   ),
                                //                   // Divider(),
                                //                   ListTile(
                                //                     title: Text("First Name"),
                                //                     subtitle: Text("Aneeza"),
                                //                     leading: Icon(Icons.person),
                                //                   ),
                                //                   ListTile(
                                //                     title: Text("Last Name"),
                                //                     subtitle: Text("Maroof"),
                                //                     leading: Icon(Icons.person_outline),
                                //                   ),
                                //                   ListTile(
                                //                     title: Text("Email"),
                                //                     subtitle:
                                //                         Text("aneezamaroof@gmail.com"),
                                //                     leading: Icon(Icons.mail),
                                //                   ),
                                //                   ListTile(
                                //                     title: Text("Phone"),
                                //                     subtitle: Text("0331 4571024"),
                                //                     leading: Icon(Icons.phone),
                                //                   ),
                                //                   Divider(),
                                //                 ],
                                //               ),
                                //             ),
                                //           ])),
                                // ]))
                              ]))
                    ]))
              ]))
        ])));
  }
}
