import 'package:flutter/material.dart';

import '../constants.dart';
import 'ownprofile.dart';

class Privacypolicy extends StatefulWidget {
  @override
  _PrivacypolicyState createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
  bool valuefirst = false;
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
            child: Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[50], borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: <Widget>[
                SizedBox(height: 15),
                Icon(
                  Icons.lock,
                  size: 36.0,
                  color: kPrimaryColor,
                ),
                SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    SizedBox(width: 55),
                    SizedBox(width: 30),
                    SizedBox(width: 20),
                    Container(
                        child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    )),
                  ],
                ),
                Divider(),
                Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Container(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Text(
                          "-Please ensure that the details you provide us with are correct and complete at all times. You are obligated to update details about your account in real time by accessing your account online.\n-This application or any portion of it (including but not limited to any copyrighted material, trademarks, or other proprietary information) may not be reproduced, duplicated, copied, sold, resold, visited, distributed or otherwise exploited for any commercial purpose without express written consent by us as may be applicable.\n-The personal information/data provided to us by you or your use of the Site will be treated as strictly confidential, in accordance with the Privacy Agreement and applicable laws and regulations.\n-Your accounts can be terminate or block if you used abusively by the vender aor by the consumer",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        )),
                    Divider(),
                    SizedBox(height: 1),
                    CheckboxListTile(
                      // secondary: const Icon(Icons.add_alert),
                      title: const Text(
                        'I agree to Evordinator Privacy Policy',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      // subtitle: Text('Ringing after 12 hours'),
                      value: this.valuefirst,
                      onChanged: (bool value) {
                        setState(() {
                          this.valuefirst = value;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
            // ListTile(
            //   title: Text("Buisness Name"),
            //   subtitle: Text("Gourmet Bakers"),
            //   leading: Icon(Icons.business),
            // ),
          )
        ])));
  }
}
