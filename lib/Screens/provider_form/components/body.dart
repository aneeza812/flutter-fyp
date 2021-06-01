import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/ownprofile.dart';
// import 'package:flutter_auth/Screens/Login/login_screen.dart';
// import 'package:flutter_auth/Screens/Signup/components/body.dart';
import 'package:flutter_auth/Screens/provider_form/components/background.dart';
import 'package:flutter_auth/Screens/subscription/subscription.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_input_small.dart';
import 'package:flutter_auth/constants.dart';

class BodyF extends StatefulWidget {
  @override
  _BodyFState createState() => _BodyFState();
}

class _BodyFState extends State<BodyF> {
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: ListView(
        children: <Widget>[
          AppBar(
              title: Text(
                'Evordinator',
              ),
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
                      )),
                )
              ]),
          SizedBox(height: size.height * 0.03),
          Icon(
            Icons.info,
            size: 30,
            color: kPrimaryColor,
          ),
          Text(
            "-Fill in the following information-",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              height: 3,
              fontSize: 15,
              color: kPrimaryColor,
            ),
          ),
          RoundedInputField(
            icon: Icons.business,
            hintText: "Buisness Name*",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.business,
            hintText: "Tagline",
            onChanged: (value) {},
          ),
          SizedBox(width: 10),
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
              labelText: '    Upload Logo',
              // hintText: 'weak password')
            ),
          ),
          RoundedInputField(
            icon: Icons.group_work,
            hintText: "Items provided",
            onChanged: (value) {},
          ),
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
              labelText: '    Upload Listing Photos',
              // hintText: 'weak password')
            ),
          ),
          RoundedInputField(
            icon: Icons.group_work,
            hintText: "Service to be provided*",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.title,
            hintText: "Sub-Service(if any)",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.text_fields,
            hintText: "Tell us about yourself*",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.attach_money,
            hintText: "Charges*",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.check,
            hintText: "Certification",
            onChanged: (value) {},
          ),
          Text(
            "Do you have a locality to provide",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 3,
                fontSize: 15,
                color: kPrimaryColor),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "yes",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: kPrimaryColor),
              ),
              Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  activeColor: kPrimaryColor,
                  onChanged: (val) {
                    setSelectedRadio(val);
                  }),
              Text(
                "no",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: kPrimaryColor),
              ),
              Radio(
                  value: 2,
                  groupValue: selectedRadio,
                  activeColor: kPrimaryColor,
                  onChanged: (val) {
                    setSelectedRadio(val);
                  })
            ],
          ),
          RoundedInputField(
            icon: Icons.home,
            hintText: "workspace",
            onChanged: (value) {},
          ),
          RoundedInputField(
            icon: Icons.people,
            hintText: "Capacity",
            onChanged: (value) {},
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedButton2(
                  text: "Done",
                  color: kPrimaryColor,
                  textColor: Colors.white,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Ownprofile();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
