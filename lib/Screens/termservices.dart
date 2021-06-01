import 'package:flutter/material.dart';

import '../constants.dart';
import 'ownprofile.dart';

class TermsServices extends StatefulWidget {
  @override
  _TermsServicesState createState() => _TermsServicesState();
}

class _TermsServicesState extends State<TermsServices> {
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
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(5)),
              child: Column(children: <Widget>[
                SizedBox(height: 15),
                Icon(
                  Icons.info,
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
                      'Terms & Services',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    )),
                  ],
                ),
                Divider(),
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    Container(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Text(
                          "- To access certain services offered by the platform, we may require that you create an account with us or provide personal information to complete the creation of an account.\n-We may at any time in our sole and absolute discretion, invalidate the username and/or password without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by, caused by, arising out of, in connection with or by reason of such request or invalidation.\n-As vender try to be honest with the consumer and that what you can do for him and what you can not.\n-To make payments more save the consumer will pay 45% of the settled amount before and remain after the event.\n-Your accounts can be terminate or block if you used abusively by the vender aor by the consumer.\n-And users will use the application with certain limits.",
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
                        'I agree to Evordinator Terms & Services',
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
                // ListTile(
                //   title: Text("Buisness Name"),
                //   subtitle: Text("Gourmet Bakers"),
                //   leading: Icon(Icons.business),
                // ),
              ]))
        ])));
  }
}
