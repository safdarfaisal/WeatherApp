import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:clima/utilities/constants.dart';

class NetworkHelper {
  NetworkHelper(this.url);

  final Uri url;

  Future getData() async {
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      var dataDecoded = jsonDecode(response.body);

      return dataDecoded;
    }
    else{
      print(response.statusCode);
    }
  }
}
