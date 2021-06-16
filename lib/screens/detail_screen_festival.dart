import 'package:ethiopia/models/festival/festival_description..dart';

import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final FestivalDescription description;
  DetailScreen({Key key, this.description}) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
                          fit: BoxFit.cover,
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
                    Text(widget.description.festivalName,
                        style: TextStyle(
                          color: Colors.black12,
                          fontSize: 24.0,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1.2,
                        )),
                    Row(
                      children: [
                      
                        Text("Festival in Ethiopian",
                            style: TextStyle(
                              color: Colors.black12,
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
                child: Center(
                  child: Text(widget.description.festivalName,
                      style: TextStyle(
                        fontSize: 32.5,
                        letterSpacing: 1.3,
                        textBaseline: TextBaseline.alphabetic,
                        decorationStyle: TextDecorationStyle.double,
                      )),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    widget.description.shortDescription,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Center(
                    child: Text(widget.description.festivaldescription,
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
