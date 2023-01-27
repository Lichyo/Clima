import 'package:geolocator/geolocator.dart';



class Location
{
  double longitude;
  double latitude;

  Future<void> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    longitude = position.longitude;
    latitude = position.latitude;
  }

}
