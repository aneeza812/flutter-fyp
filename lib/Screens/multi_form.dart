import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/form.dart';
import 'package:flutter_auth/Screens/provider_form/form.dart';
import 'package:flutter_auth/Screens/user.dart';
import 'package:flutter_auth/constants.dart';

class MultiForm extends StatefulWidget {
  @override
  _MultiFormState createState() => _MultiFormState();
}

class _MultiFormState extends State<MultiForm> {
  List<User> users = [];
  List<UserForm> forms = [];

  @override
  Widget build(BuildContext context) {
    forms.clear();
    for (int i = 0; i < users.length; i++) {
      forms.add(UserForm(
        key: GlobalKey(),
        user: users[i],
        onDelete: () => onDelete(i),
      ));
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('User Form'),
          actions: <Widget>[
            FlatButton(
                onPressed: onSave,
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ))
          ],
        ),
        body: users.length <= 0
            ? Center(
                child: Text('add sevice forms by tapping the + button below'),
              )
            : ListView.builder(
                itemCount: users.length,
                itemBuilder: (_, i) => forms[i],
              ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: kPrimaryColor,
          onPressed: onAddForm,
        ));
  }

  void onDelete(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  void onAddForm() {
    setState(() {
      users.add(User());
    });
  }

  void onSave() {
    forms.forEach((form) => form.isvalid());
  }
}
