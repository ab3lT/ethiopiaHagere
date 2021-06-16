
import 'package:ethiopia/mapScreens/gonderMap.dart';

import 'package:ethiopia/screens/developers_page.dart';
import 'package:ethiopia/screens/form%20Screen/main.dart';
import 'package:ethiopia/widgets/festival_list.dart';

import 'package:ethiopia/widgets/header.dart';
import 'package:ethiopia/widgets/history_list.dart';
import 'package:ethiopia/widgets/toursm_places.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int developersPage = 1;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.home,
    FontAwesomeIcons.locationArrow,
    FontAwesomeIcons.prescription,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        if (index == 1) {
          return Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => GonderMap(),
            ),
          );
        }

        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Icon(
            _icons[index],
            size: 25.0,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColor
                : Color(0xFFB4C1C4),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context, titleText: " "),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 120.0,
                ),
                child: Text(
                  'Know Ethiopia and Travel !!!',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ),
              SizedBox(height: 20.0),
              History_list(),
              SizedBox(height: 20.0),
              Tourism_places(),
              SizedBox(height: 20.0),
              Festival_list(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (int value) {
            if (value == 1) {
              return (Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Developers(),
                ),
              ));
            }
            setState(() {
              _currentTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_circle,
                size: 30.0,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.person_add),
                iconSize: 32.0,
                color: Theme.of(context).primaryColor,
                onPressed: () => (Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomePageF(),
                  ),
                )),
              ),
              title: SizedBox.shrink(),
            ),
          ],
        ));
  }
}
