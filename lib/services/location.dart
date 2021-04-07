import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:clima/utilities/constants.dart';


class Location {
  double _latitude;
  double _longitude;

  Location(){
    _latitude = 0;
    _longitude = 0;
  }


  double getLatitude(){
    return _latitude;
  }

  double getLongitude(){
    return _longitude;
  }

  Future <void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      _longitude = position.longitude;
      _latitude = position.latitude;
    }
    catch(e){
      print(e);
    }
  }


}