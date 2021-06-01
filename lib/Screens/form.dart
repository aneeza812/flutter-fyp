import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/profile.dart';
import 'package:flutter_auth/Screens/profile.dart';
import 'package:flutter_auth/Screens/thirdpg.dart';
import 'package:flutter_auth/Screens/user.dart';
import 'package:flutter_auth/constants.dart';

typedef OnDelete();

class UserForm extends StatefulWidget {
  final User user;
  final state = _UserFormState();
  final OnDelete onDelete;
  UserForm({Key key, this.user, this.onDelete}) : super(key: key);
  @override
  _UserFormState createState() => state;
  bool isvalid() => state.validate();
}

class _UserFormState extends State<UserForm> {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  'service',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: kPrimaryLightColor,
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.delete),
                    color: Colors.black,
                    onPressed: widget.onDelete,
                    iconSize: 20,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Thirdpg();
                          },
                        ),
                      );
                    },
                    initialValue: widget.user.service,
                    onSaved: (val) => widget.user.service = val,
                    validator: (val) =>
                        val.length > 3 ? null : 'try to write whole name',
                    decoration: InputDecoration(
                        fillColor: kPrimaryLightColor,
                        suffixIcon: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        labelText: 'service name',
                        hintText: 'write the name of service you want')),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validate() {
    var valid = form.currentState.validate();
    if (valid) form.currentState.save();
    return valid;
  }
}
