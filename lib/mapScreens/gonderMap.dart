import 'package:ethiopia/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class GonderMap extends StatefulWidget {
  @override
  _GonderMapState createState() => _GonderMapState();
}

class _GonderMapState extends State<GonderMap> {
  Completer<GoogleMapController> _controller = Completer();
  MapType type;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(9.040567307464984, 38.76329765003023),
    zoom: 14.4746,
  );
  Set<Marker> markers;

  @override
  void initState() {
    super.initState();
    type = MapType.hybrid;
    markers = Set.from([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context, titleText: "Map"),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            zoomControlsEnabled: false,
            markers: markers,
            mapType: type,
            onTap: (position) {
              Marker mk1 = Marker(
                markerId: MarkerId('1'),
                position: position,
              );
              setState(() {
                markers.add(mk1);
              });
            },
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      type = type == MapType.hybrid
                          ? MapType.normal
                          : MapType.hybrid;
                    });
                  },
                  child: Icon(Icons.map),
                ),
                FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.zoom_in),
                  onPressed: () async {
                    (await _controller.future)
                        .animateCamera(CameraUpdate.zoomIn());
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.zoom_out),
                  onPressed: () async {
                    (await _controller.future)
                        .animateCamera(CameraUpdate.zoomOut());
                  },
                ),
                FloatingActionButton.extended(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: Icon(Icons.location_on),
                    label: Text("My position"),
                    onPressed: () {
                      if (markers.length < 1) print("no marker added");
                      print(markers.first.position);

                      Scaffold(
                        body: Center(
                          child: Stack(children: [
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 25.0, // soften the shadow
                                    spreadRadius: 5.0, //extend the shadow
                                    /* offset: Offset(
                    15.0, // Move to right 10  horizontally
                    15.0, // Move to bottom 10 Vertically
                  ),  */
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              child: Text(
                                'Checked Successfully',
                                style: TextStyle(
                                  fontSize: 50,
                                ),
                              ),
                              top: 10,
                              left: 90,
                            )
                          ]),
                        ),
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
