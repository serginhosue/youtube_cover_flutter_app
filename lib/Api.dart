import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtubecoverflutterapp/model/Movie.dart';

const YOUTUBE_KEY = "AIzaSyC7thzGStWPumFI9EYPRpCUzdHylcBdCzI";
const CHANNEL_KEY = "UCwXdFgeE9KYzlDdR7TG9cMw";
const BASE_URL = "https://www.googleapis.com/youtube/v3/";

class Api {

  search(String find) async {

    http.Response response = await http.get(
        BASE_URL + "search"
            "?part=snippet"
            "&type=video"
            "&maxResult=20"
            "&order=date"
            "&key=$YOUTUBE_KEY"
            "&channelId=$CHANNEL_KEY"
            "&q=$find"
    );

    if(response.statusCode == 200){

      Map<String, dynamic> result = json.decode(response.body);

      print(result["items"].toString());

//      List<Movie> movies = result["items"].map<Movie>(
//          (map){
//            return Movie.fromJson(map);
//
//          }
//      );


    }else{

    }

  }

}