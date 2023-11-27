import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

void main() async{
  Response responses = await Dio().get('https://jsonplaceholder.typicode.com/users');
  if (kDebugMode) {
     print(responses.data.length);
    }
    for (int i=0; i<=responses.data.length-1;i++){
      if (kDebugMode) {
        print(responses.data[i]['name']);
      }
  }
}