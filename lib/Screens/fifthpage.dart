import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/sixthpg.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../constants.dart';
import 'ownprofile.dart';

class Fifthpg extends StatefulWidget {
  @override
  _FifthpgState createState() => _FifthpgState();
}

class _FifthpgState extends State<Fifthpg> {
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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 9),
            child: ListView(
              children: <Widget>[
                SizedBox(height: size.height * 0.02),
                ListTile(
                  title: Text(
                    'Lunch',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono',
                      fontSize: 20,
                    ),
                  ),
                  trailing: Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono',
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {},
                  // trailing: Icon(Icons.arrow_forward_ios),
                ),
                Card(
                  child: ListTile(
                    title: Text(
                      'Dessert',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: kPrimaryColor,
                      size: 15,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Sixthpg();
                          },
                        ),
                      );
                    },
                    // trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                    child: ListTile(
                  title: Text(
                    'Chinese',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: kPrimaryColor,
                    size: 15,
                  ),
                  onTap: () {},
                )),
                Card(
                  child: ListTile(
                    title: Text(
                      'Continental',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: kPrimaryColor,
                      size: 15,
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return LoginScreen();
                      //     },
                      //   ),
                      // );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text(
                      'Thai',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: kPrimaryColor,
                      size: 15,
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return LoginScreen();
                      //     },
                      //   ),
                      // );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text(
                      'Turkish',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: kPrimaryColor,
                      size: 15,
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return LoginScreen();
                      //     },
                      //   ),
                      // );
                    },
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
      hint: 'Wedding',
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
              height: 240,
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Education'),
                  ),
                  ListTile(
                    title: Text('Birthday'),
                  ),
                  ListTile(
                    title: Text('Buisness'),
                  ),
                  ListTile(
                    title: Text('Public'),
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
