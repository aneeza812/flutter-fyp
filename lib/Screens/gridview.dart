import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/body.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/front/splash.dart';
import 'package:flutter_auth/Screens/provider_form/form.dart';
import 'package:flutter_auth/Screens/thirdpg.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:get/get.dart';

import '../constants.dart';

// import 'package:fluttertoast/fluttertoast.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    List<String> events = [
      "Wedding",
      "Education",
      "Birthday",
      "Buisness",
      "public"
    ];

    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 0.0),

      // padding: const EdgeInsets.only(top: 170),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_top.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          margin: const EdgeInsets.only(top: 150.0),
          child: GridView(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              children: events.map((title) {
                return InkWell(
                  child: Card(
                    margin: const EdgeInsets.all(15.0),
                    child: getCardByTitle(title),
                  ),

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
                  // return GestureDetector(
                  //   child: Card(
                  //     margin: const EdgeInsets.all(15.0),
                  //     child: getCardByTitle(title),
                  //   ),
                  //   onTap: () {
                  //     // Fluttertoast.showToast(
                  //     //   msg: title + "click",
                  //     //   toastLength: Toast.LENGTH_SHORT,
                  //     //   gravity: ToastGravity.CENTER,
                  //     //   backgroundColor: Colors.red,
                  //     //   textColor: Colors.white,
                  //     //   fontSize: 16.0,
                  //     // );
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) {
                  //           return WelcomeScreen();
                  //         },
                  //       ),
                  //     );
                  //   },
                );
              }).toList())),
    ));
  }
}

Column getCardByTitle(String title) {
  String img = "";
  if (title == "Wedding") {
    img = "assets/images/wedding.png";
  } else if (title == "Education") {
    img = "assets/images/education.png";
  } else if (title == "Birthday") {
    img = "assets/images/birthday2.png";
  } else if (title == "Buisness") {
    img = "assets/images/buisness.png";
  } else {
    img = "assets/images/public.png";
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    verticalDirection: VerticalDirection.down,
    children: <Widget>[
      new Center(
        child: Container(
          child: new Stack(
            children: <Widget>[
              new Image.asset(
                img,
                width: 50.0,
                height: 50.0,
              )
            ],
          ),
        ),
      ),
      Text(
        title,
        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

// class GridLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<String> events = [
//       "Wedding",
//       "Education",
//       "Birthday",
//       "Buisness",
//       "public"
//     ];

//     return Scaffold(
//         body: Container(
//       margin: const EdgeInsets.only(top: 0.0),
//       // padding: const EdgeInsets.only(top: 170),
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/main_top.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//           margin: const EdgeInsets.only(top: 150.0),
//           child: GridView(
//               physics: BouncingScrollPhysics(),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//               ),
//               children: events.map((title) {
//                 return InkWell(
//                   child: Card(
//                     margin: const EdgeInsets.all(15.0),
//                     child: getCardByTitle(title),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           return WelcomeScreen();
//                         },
//                       ),
//                     );
//                   },
//                   // return GestureDetector(
//                   //   child: Card(
//                   //     margin: const EdgeInsets.all(15.0),
//                   //     child: getCardByTitle(title),
//                   //   ),
//                   //   onTap: () {
//                   //     // Fluttertoast.showToast(
//                   //     //   msg: title + "click",
//                   //     //   toastLength: Toast.LENGTH_SHORT,
//                   //     //   gravity: ToastGravity.CENTER,
//                   //     //   backgroundColor: Colors.red,
//                   //     //   textColor: Colors.white,
//                   //     //   fontSize: 16.0,
//                   //     // );
//                   //     Navigator.push(
//                   //       context,
//                   //       MaterialPageRoute(
//                   //         builder: (context) {
//                   //           return WelcomeScreen();
//                   //         },
//                   //       ),
//                   //     );
//                   //   },
//                 );
//               }).toList())),
//     ));
//   }

//   Column getCardByTitle(String title) {
//     String img = "";
//     if (title == "Wedding")
//       img = "assets/images/wedding.png";
//     else if (title == "Education")
//       img = "assets/images/education.png";
//     else if (title == "Birthday")
//       img = "assets/images/birthday2.png";
//     else if (title == "Buisness")
//       img = "assets/images/buisness.png";
//     else
//       img = "assets/images/public.png";

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       mainAxisSize: MainAxisSize.min,
//       verticalDirection: VerticalDirection.down,
//       children: <Widget>[
//         new Center(
//           child: Container(
//             child: new Stack(
//               children: <Widget>[
//                 new Image.asset(
//                   img,
//                   width: 50.0,
//                   height: 50.0,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Text(
//           title,
//           style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
//           textAlign: TextAlign.center,
//         )
//       ],
//     );
//   }
// }
