import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/form.dart';
import 'package:flutter_auth/Screens/multi_form.dart';
import 'package:flutter_auth/Screens/parsing/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: MultiForm(),
    );
  }
}
