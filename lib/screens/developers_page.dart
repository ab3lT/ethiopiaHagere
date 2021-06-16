import 'package:ethiopia/widgets/header.dart';
import 'package:flutter/material.dart';

class Developers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "Developers"),
      body: Stack(
        children: [
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Positioned(
                  top: 10,
                  left: 5,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 32.0,
                    color: Theme.of(context).primaryColor,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
              Center(
                  child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Name',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(width: 200),
                          Container(
                              child: Text(
                            'ID',
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50.0,
                        color: Theme.of(context).primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text(
                              'Abel Tadesse',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                            SizedBox(width: 150),
                            Container(
                                child: Text(
                              'ATE/1359/11',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50.0,
                        color: Theme.of(context).primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text(
                              'Chala Amenu',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                            SizedBox(width: 150),
                            Container(
                                child: Text(
                              'ATE/2886/11',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50.0,
                        color: Theme.of(context).primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text(
                              'Hanan Bewketu',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                            SizedBox(width: 150),
                            Container(
                                child: Text(
                              'ATR/3337/10',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50.0,
                        color: Theme.of(context).primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text(
                              'Tadesse Ageru',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                            SizedBox(width: 150),
                            Container(
                                child: Text(
                              'ATE/3174/11',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50.0,
                        color: Theme.of(context).primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text(
                              'Yosef Sahele',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                            SizedBox(width: 150),
                            Container(
                                child: Text(
                              'ATE/7950/11',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 50.0,
                        color: Theme.of(context).primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text(
                              'Yared Hilu',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                            SizedBox(width: 150),
                            Container(
                                child: Text(
                              'ATE/9509/08',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          )),
        ],
      ),
    );
  }
}
