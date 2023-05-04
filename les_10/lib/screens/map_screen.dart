// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import '../api.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List listOfPoints = [];
  List<LatLng> points = [];
  //function to consume the openrouteservices API
  getCoordinates() async {
    //request for response
    var response = await http.get(
        getRouteUrl("-12.9586700, 28.6365900", "-12.996232638, 28.6582140961"));

    setState(() {
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        listOfPoints = data['features'][0]['geometry']['coordinates'];
        points = listOfPoints
            .map((e) => LatLng(e[1].toDouble(), e[0].toDouble()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterMap(
          options: MapOptions(
            zoom: 15,
            center: LatLng(-12.9586700, 28.6365900),
          ),
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),
            MarkerLayer(
              markers: [
                //The first Point Marker.
                Marker(
                    point: LatLng(-12.9586700, 28.6365900),
                    width: 80,
                    height: 80,
                    builder: (context) => IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.location_on),
                          iconSize: 45,
                          color: Colors.red,
                        )),
                //Second Marker point
                Marker(
                    point: LatLng(-12.996232638, 28.6582140961),
                    width: 80,
                    height: 80,
                    builder: (context) => IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.location_on),
                          iconSize: 45,
                          color: Colors.orange,
                        ))
              ],
            ),
            //polyline Layer to print the route.
            PolylineLayer(
              polylineCulling: false,
              polylines: [
                Polyline(
                  points: points,
                  color: Colors.red,
                  strokeWidth: 50,
                  )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getCoordinates();
        },
        tooltip: 'Get Route',
        child: const Icon(Icons.add),
      ),
    );
  }
}
