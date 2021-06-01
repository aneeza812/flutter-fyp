import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/plan.dart';
import 'package:flutter_auth/Screens/provider_form/form.dart';
import 'package:flutter_auth/components/roundedbutton_small.dart';

import '../constants.dart';
import 'ownprofile.dart';

class Listingview extends StatefulWidget {
  @override
  _ListingviewState createState() => _ListingviewState();
}

class _ListingviewState extends State<Listingview> {
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
            child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 55),
                      SizedBox(width: 30),
                      SizedBox(width: 20),
                      Container(
                        child: RoundedButtonSmall(
                          color: kPrimaryLightColor,
                          textColor: Colors.black87,
                          text: "Change",
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
                    ],
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Buisness Name"),
                    subtitle: Text("Gourmet Bakers"),
                    leading: Icon(Icons.business),
                  ),
                  ListTile(
                    title: Text("Tagline"),
                    subtitle:
                        Text("All kind of sweet dishes for any occassion"),
                    leading: Icon(Icons.business),
                  ),
                  ListTile(
                    title: Text("Service"),
                    subtitle: Text("Food Supplier"),
                    leading: Icon(Icons.group_work),
                  ),
                  ListTile(
                    title: Text("Sub-Service"),
                    subtitle: Text("Dessers"),
                    leading: Icon(Icons.title),
                  ),
                  ListTile(
                    title: Text("About:"),
                    subtitle: Text(
                        "Fill a table with chocolate-dunked goodies like Rice Krispies bars and caramel apples. Or have a chocolate fountain with dippers like fruit skewers, bite-size brownies and soft pretzels . And if chocolate brown doesn't fit your wedding palette, choose a different one"),
                    leading: Icon(Icons.info),
                  ),
                  // Divider(),
                  ListTile(
                    title: Text("Certification"),
                    subtitle: Text("Wedding Dessserts"),
                    leading: Icon(Icons.cake),
                  ),
                  ListTile(
                    title: Text("Workspace"),
                    subtitle: Text("Liberty Market"),
                    leading: Icon(Icons.location_on),
                  ),
                  ListTile(
                    title: Text("Items"),
                    subtitle: Text(
                        "Wedding palette, Wedding Cakes, Rice Krispies Bars, Caramel Apples, Choclate Fountain, Bite Size Brownies, Soft Pretzels"),
                    leading: Icon(Icons.check_box),
                  ),
                  ListTile(
                    title: Text("Charge"),
                    subtitle: Text(
                        "For Cake we charge 1200 rs per pound , Contact for more details "),
                    leading: Icon(Icons.attach_money),
                  ),
                  Divider(),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        )));
  }
}
