import 'package:ethiopia/models/festival/festival_description..dart';
import 'package:ethiopia/screens/detail_screen_festival.dart';
import 'package:ethiopia/widgets/header.dart';
import 'package:flutter/material.dart';

class See_All_Festival_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: header(context, titleText: "Festivals"),
        body: ListView(
          children: [
            Container(
              height: sizeY,
              child: ListView(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Festivals in Ethiopia',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          )),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: sizeY,
                      width: sizeX,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: festivalDescription.length,
                          itemBuilder: (BuildContext context, int index) {
                            FestivalDescription destinationPlaces =
                                festivalDescription[index];
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => DetailScreen(
                                      description: destinationPlaces),
                                ),
                              ),
                              child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Positioned(
                                          left: 50,
                                          bottom: 10.0,
                                          child: Container(
                                            height: 120.0,
                                            width: 200,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'Festival',
                                                      style: TextStyle(
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: 1.2,
                                                      ),
                                                    ),
                                                    Text(destinationPlaces
                                                        .shortDescription),
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  offset: Offset(0.0, 2.0),
                                                  blurRadius: 6.0)
                                            ],
                                          ),
                                          child: Stack(
                                            children: [
                                              Hero(
                                                tag: destinationPlaces.imageUrl,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  child: Image(
                                                    height: 300.0,
                                                    width: sizeX,
                                                    image: AssetImage(
                                                        destinationPlaces
                                                            .imageUrl),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 10.0,
                                                bottom: 10.0,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        destinationPlaces
                                                            .festivalName,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 24.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 1.2,
                                                        )),
                                                    Row(
                                                      children: [
                                                        /* Icon(
                                                  FontAwesomeIcons.locationArrow,
                                                  size: 10.0,
                                                  color: Colors.white,
                                                ), */
                                                        Text("Ethiopian King",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ])),
                            );
                          }),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ));
  }
}
