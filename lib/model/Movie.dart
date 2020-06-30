class Movie {

  String id;
  String title;
  String description;
  String image;
  String channel;

  Movie({this.id, this.title, this.description, this.image, this.channel});

//  static jsonConvert(Map<String, dynamic> json){
//    return Movie(
//      id: json["id"]["videoId"];
//      title: json["snippet"]["title"];
//      description: : json["snippet"]["description"];
//      image: : json["snippet"]["thumbnail"]["high"]["url"];
//      channel: : json["snippet"]["channelId"];
//    );
//  }

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
      id: json["id"]["videoId"],
      title: json["snippet"]["title"],
      description: json["snippet"]["description"],
      image: json["snippet"]["thumbnail"]["high"]["url"],
      channel: json["snippet"]["channelId"],
    );
  }

}