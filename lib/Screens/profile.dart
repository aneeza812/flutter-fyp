import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

class Rating extends StatefulWidget {
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  void show() {
    showDialog(
      context: context,
      builder: (context) {
        return RatingDialog(
          // icon: RoundedInputField(
          //   hintText: "Your Name",
          //   onChanged: (value) {},
          // ),
          icon: Icon(
            Icons.rate_review,
            size: 30,
            color: kPrimaryColor,
          ),
          title: 'Give a Rating',
          description: 'for better experience next time',
          onSubmitPressed: (int rating) {
            print(
              "rating: $rating",
            );
          },
          submitButton: "Submit",
          alternativeButton: "Contact Us",
          // onAlternativePressed:(){} ,
          positiveComment: "Thanks for your rating",
          negativeComment: "we will try to improve",
        );
      },
    );
  }

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
                  onTap: () {},
                  child: Icon(
                    Icons.person,
                    size: 26.0,
                  ),
                )),
          ]),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 200, 15, 15),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 95),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Gourmet Bakers",
                                        style:
                                            Theme.of(context).textTheme.title),
                                    ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text(
                                          "All kind of sweet dishes for any occassion"),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                      child: Text(
                                    "4.3",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18.0,
                                    ),
                                  )),
                                  Container(
                                    child: Icon(
                                      FontAwesomeIcons.solidStar,
                                      color: Colors.amber,
                                      size: 15.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 170,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.call,
                                      color: kPrimaryColor,
                                      size: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.message,
                                      color: kPrimaryColor,
                                      size: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.group_add,
                                      color: kPrimaryColor,
                                      size: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 160,
                                  ),
                                  Container(
                                      child: Text(
                                    "1200 Rs/pound",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20.0,
                                    ),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          margin: EdgeInsets.only(left: 15),
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text("About:"),
                            subtitle: Text(
                                "Fill a table with chocolate-dunked goodies like Rice Krispies bars and caramel apples. Or have a chocolate fountain with dippers like fruit skewers, bite-size brownies and soft pretzels . And if chocolate brown doesn't fit your wedding palette, choose a different one"),
                          ),
                          Divider(),
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
                    Container(
                        decoration: BoxDecoration(
                            // color: kPrimaryLightColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: RichText(
                          text: TextSpan(
                            // text: 'Here is the ',
                            // style: TextStyle(fontSize: 30, color: Colors.black),
                            children: <InlineSpan>[
                              TextSpan(
                                  text: 'write a review',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = show,
                                  // = () {
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) {
                                  //         return show;
                                  //       },
                                  //     ),
                                  //   );
                                  // },
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: kPrimaryColor,
                                  )),

                              WidgetSpan(
                                child: Icon(
                                  Icons.edit,
                                  size: 20,
                                  color: kPrimaryColor,
                                ),
                              ),

                              // TextSpan(text: 'text!'),
                            ],
                          ),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
