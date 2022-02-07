import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;
  void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      LocationPermission permission = await Geolocator.requestPermission();
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
