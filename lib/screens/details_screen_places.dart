import 'package:ethiopia/mapScreens/Ethiopia_map.dart';
import 'package:ethiopia/models/festival/festival_description..dart';

import 'package:ethiopia/models/place/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreenPlace extends StatefulWidget {
  final PlaceDescription description;

  DetailScreenPlace(
      {Key key,
      this.description,
      FestivalDescription destinationFestival,
      FestivalDescription descriptions})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreenPlace> {
  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: sizeX,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white24,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Center(
                  child: GestureDetector(
                    onLongPress: () => Navigator.pop(context),
                    child: Hero(
                      tag: widget.description.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image(
                          image: AssetImage(widget.description.imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 40.0),
                child: Row(children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 32.0,
                    color: Theme.of(context).primaryColor,
                    onPressed: () => Navigator.pop(context),
                  )
                ]),
              ),
              Positioned(
                left: 20.0,
                bottom: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.description.placeName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.2,
                          )),
                    ),
                    Row(
                      children: [
                        Text("Place in Ethiopia",
                            style: TextStyle(
                              color: Colors.black38,
                            )),
                        SizedBox(width: 200),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.locationArrow),
                            iconSize: 50.0,
                            color: Theme.of(context).primaryColor,
                            onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => MyHomePage(),
                                  ),
                                )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 20,
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                width: sizeX,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      )),
                  child: Center(
                    child: Text(widget.description.placeName,
                        style: TextStyle(
                          fontSize: 32.5,
                          letterSpacing: 1.3,
                          textBaseline: TextBaseline.alphabetic,
                          decorationStyle: TextDecorationStyle.double,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      )),
                  child: Center(
                    child: Text(
                      widget.description.shortDescription,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Center(
                    child: Text(widget.description.description,
                        style: TextStyle(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.3,
                          textBaseline: TextBaseline.alphabetic,
                          decorationStyle: TextDecorationStyle.double,
                        )),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
