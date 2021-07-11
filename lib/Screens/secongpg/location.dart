import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/gridview.dart';
import 'package:flutter_auth/Screens/ownprofile.dart';
import 'package:flutter_auth/Screens/privacypolicy.dart';
import 'package:flutter_auth/Screens/termservices.dart';
import 'package:flutter_auth/Screens/thirdpg.dart';
import 'package:flutter_auth/Screens/user_form/user_form.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../dialogflow.dart';
import '../register.dart';

class LocationPg extends StatefulWidget {
  @override
  _LocationPgState createState() => _LocationPgState();
}

class _LocationPgState extends State<LocationPg> {
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
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            // new UserAccountsDrawerHeader(
            //     accountName: new Text('Aneeza Maroof'),
            //     accountEmail: new Text('aneezamaroof@gmail.com'),
            //     currentAccountPicture: new CircleAvatar(
            //         backgroundImage:
            //             new NetworkImage('https://i.pravatar.cc/300'))),
            Card(
              child: Container(
                  color: kPrimaryLightColor,
                  width: 300,
                  height: 80,
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/orange_clock.svg",
                      height: size.height * 0.10,
                      color: kPrimaryColor,
                    ),
                  ])),
            ),
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
                onTap: () {},
                // trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Card(
                child: ListTile(
              title: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              leading: Icon(
                Icons.person_add,
                color: Colors.black54,
                size: 20,
              ),
              // trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )),
            Card(
              child: ListTile(
                title: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                leading: Icon(
                  Icons.person_pin,
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
          ],
        ),
      ),
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Grid(),
        Padding(
          padding: const EdgeInsets.only(top: 135, left: 70),
          child: Text(
            "Make Single Category Search",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoMono',
                color: Colors.black54),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 400, left: 30, bottom: 120, right: 30),
          child: Text(
            "Or you can Select & Search multiple modules",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoMono',
                color: Colors.black54),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 420, left: 60, bottom: 160, right: 60),
          child: RoundedButton(
            // color: kPrimaryLightColor,
            // textColor: Colors.black87,
            text: "+ MULTIPLE MODULE ",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return userform();
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 500, left: 115, bottom: 80, right: 115),
          child: RoundedButton(
            color: kPrimaryLightColor,
            textColor: Colors.black87,
            text: "Chatbot ",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePageDialogflow();
                  },
                ),
              );
            },
          ),
        ),
        searchBar2UI(),
        searchBarUI(),
      ]),
    );
  }

  Widget searchBarUI() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      hint: 'Lahore, Pakistan',
      openAxisAlignment: 0.0,
      maxWidth: 600,
      axisAlignment: isPortrait ? 0.0 : -1.0,
      scrollPadding: EdgeInsets.only(top: 1, bottom: 20),
      elevation: 4.0,
      onQueryChanged: (query) {},
      transitionCurve: Curves.easeInOut,
      automaticallyImplyDrawerHamburger: false,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: Icon(Icons.place),
            onPressed: () {
              print('Places Pressed');
            },
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        )
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            child: Container(
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Gulberg,Lahore'),
                  ),
                  ListTile(
                    title: Text('Model Town,Lahore'),
                  ),
                  ListTile(
                    title: Text('Johar Town,Lahore'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget searchBar2UI() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      hint: 'Category',
      openAxisAlignment: 0.0,
      maxWidth: 500,
      margins: new EdgeInsets.only(top: 70, left: 9, right: 9),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      scrollPadding: EdgeInsets.only(top: 1, bottom: 20),
      elevation: 4.0,
      onQueryChanged: (query) {},
      transitionCurve: Curves.easeInOut,
      automaticallyImplyDrawerHamburger: false,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Thirdpg();
                  },
                ),
              );
            },
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        )
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            child: Container(
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text('wedding'),
                  ),
                  ListTile(
                    title: Text('education'),
                  ),
                  ListTile(
                    title: Text('birthday'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
