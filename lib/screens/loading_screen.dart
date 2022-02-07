import 'package:flutter/material.dart';
import 'package:weatherly/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location l1 = new Location();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            //Get the current location
            await l1.getLocation();
            print(l1.latitude);
            print(l1.longitude);
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
