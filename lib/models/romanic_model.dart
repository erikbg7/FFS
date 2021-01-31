class VideoMapping {
  String title;
  String description;
  String url;

  VideoMapping(this.title, this.description, this.url);

  Map<String, dynamic> toMap(){
    return {
      'title' : title,
      'description' : description,
      'url' : url
    };
  }

  VideoMapping.fromFirestore(Map firestore)
      : title = firestore['title'],
        description = firestore['description'],
        url = firestore['url'];
}

class Church {
  String id;
  String name;
  String description;
  String location;
  String telephone;
  String imageUrl;

  Church(this.id, this.name, this.description, this.location, this.telephone, this.imageUrl);

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'name' : name,
      'description' : description,
      'location' : location,
      'telephone' : telephone,
      'imageUrl' : imageUrl
    };
  }

  Church.fromFirestore(Map firestore)
      : id = firestore['id'],
        name = firestore['name'],
        description = firestore['description'],
        location = firestore['location'],
        telephone = firestore['telephone'],
        imageUrl = firestore['imageUrl'];
}

//class RomanicCenter {
//}



class Romanic {


}