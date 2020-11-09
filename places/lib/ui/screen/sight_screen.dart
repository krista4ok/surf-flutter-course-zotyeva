import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/string.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:geolocator/geolocator.dart';

/// Виджет отображения главного экрана.
class SightScreen extends StatefulWidget {
  @override
  _SightScreenState createState() => _SightScreenState();
}

class _SightScreenState extends State<SightScreen> {
  YandexMapController _controller;

  static const Point _point = Point(latitude: 51.5254, longitude: 39.0907);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.green,
          title: RichText(
            text: TextSpan(
                text: interesting,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                children: [
                  TextSpan(
                    text: places,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  )
                ]),
          ),
        ),
        drawer: Container(
          color: Colors.red,
          width: 250,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: YandexMap(
                onMapCreated: (controller) async {
                  _controller = controller;
                  LocationPermission permission =
                      await Geolocator.requestPermission();

                  final currentLocation = await Geolocator.getCurrentPosition(
                      desiredAccuracy: LocationAccuracy.high);

                  final currentPoint = Point(
                      latitude: currentLocation.latitude,
                      longitude: currentLocation.longitude);

                  await _controller.move(
                    point: currentPoint,
                  );

                  await _controller.addPlacemark(
                    Placemark(
                      point: currentPoint,
                      opacity: 0.7,
                      iconName: 'res/icon/location.png',
                    ),
                  );

                  for (var sight in mocks) {
                    final data = await get(sight.url);

                    await _controller.addPlacemark(
                      Placemark(
                        point: Point(latitude: sight.lat, longitude: sight.lon),
                        rawImageData: data.bodyBytes,
                        opacity: 0.9,
                        scale: 0.3,
                      ),
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                height: 35,
                onPressed: null,
                child: Text(
                  showAsList,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                color: Colors.green,
                disabledColor: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
