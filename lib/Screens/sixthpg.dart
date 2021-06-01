import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/profile.dart';
import 'package:flutter_auth/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dio/dio.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'ownprofile.dart';

class Sixthpg extends StatefulWidget {
  @override
  _SixthpgState createState() => _SixthpgState();
}

class _SixthpgState extends State<Sixthpg> {
  final dio = new Dio(); // for http requests

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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 2, right: 2),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Rating();
                            },
                          ),
                        );
                      },
                      child: new FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: kPrimaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: myDetailsContainer1(),
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius:
                                        new BorderRadius.circular(24.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.topRight,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1495147466023-ac5c588e2e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Rating();
                            },
                          ),
                        );
                      },
                      child: new FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: kPrimaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: myDetailsContainer4(),
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius:
                                        new BorderRadius.circular(24.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.topRight,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1545396872-a6682fc218ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new GestureDetector(
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
                      child: new FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: kPrimaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: myDetailsContainer3(),
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius:
                                        new BorderRadius.circular(24.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.topRight,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1525640932057-b18561aca9b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new GestureDetector(
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
                      child: new FittedBox(
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(24.0),
                            shadowColor: kPrimaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: myDetailsContainer2(),
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius:
                                        new BorderRadius.circular(24.0),
                                    child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.topRight,
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1526399232581-2ab5608b6336?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          searchBarUI(),
        ],
      ),
    );
  }

  Widget searchBarUI() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return FloatingSearchBar(
      hint: 'Dessert',
      openAxisAlignment: 0.0,
      maxWidth: 600,
      axisAlignment: isPortrait ? 0.0 : -1.0,
      scrollPadding: EdgeInsets.only(top: 1, bottom: 20),
      elevation: 4.0,
      onQueryChanged: (query) {},
      transitionCurve: Curves.easeInOut,
      automaticallyImplyDrawerHamburger: false,
      automaticallyImplyBackButton: false,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Dessert Pressed');
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
              height: 240,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Continental'),
                  ),
                  ListTile(
                    title: Text('Chinese'),
                  ),
                  ListTile(
                    title: Text('Thai'),
                  ),
                  ListTile(
                    title: Text('Turkish'),
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

Widget myDetailsContainer1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Text(
          "Gourmet Bakers",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(321) \u00B7 0.9 km",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
      ),
      Container(
          child: Text(
        "Pastries \u00B7 Liberty,Lahore",
        style: TextStyle(
            color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.bold),
      )),
    ],
  );
}

Widget myDetailsContainer2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Text(
          "Malmo Bakers",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
        child: Container(
            child: Row(
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
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(75) \u00B7 1.2 km",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
      ),
      Container(
        child: Text(
          "Pastries \u00B7 Barkat Market,Lahore",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Widget myDetailsContainer3() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Text(
          "Cake Walk",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 4, top: 4),
        child: Container(
            child: Row(
          children: <Widget>[
            Container(
                child: Text(
              "4.0",
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
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(100) \u00B7 2.0 km",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
      ),
      Container(
          child: Text(
        "Pastries \u00B7 mm Alam Road,Lahore",
        style: TextStyle(
            color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.bold),
      )),
    ],
  );
}

Widget myDetailsContainer4() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
            child: Text(
          "Cakes and Bakes",
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 4, bottom: 4),
        child: Container(
            child: Row(
          children: <Widget>[
            Container(
                child: Text(
              "3.5",
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
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(50) \u00B7 2.5 km",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
      ),
      Container(
          child: Text(
        "Pastries \u00B7 Kalma Chowk,Lahore",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      )),
    ],
  );
}
