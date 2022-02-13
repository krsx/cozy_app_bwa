class Space {
  int? id;
  String? imageUrl;
  String? name;
  int? price;
  String? city;
  String? country;
  int? rating;
  String? address;
  String? phone;
  String? mapUrl;
  List? photos;
  int? numberOfKitchen;
  int? numberOfBedrooms;
  int? numberOfCupboards;

  Space({
    this.id = 0,
    this.imageUrl = "",
    this.name = "",
    this.price = 0,
    this.city = "",
    this.country = "",
    this.rating = 0,
    this.address = "",
    this.mapUrl = "",
    this.numberOfBedrooms = 0,
    this.numberOfKitchen = 0,
    this.numberOfCupboards = 0,
    this.phone = "",
    this.photos,
  });

  Space.fromJson(json) {
    id = json["id"];
    name = json["name"];
    city = json["city"];
    country = json["country"];
    imageUrl = json["image_url"];
    price = json["price"];
    rating = json["rating"];
    address = json["address"];
    phone = json["phone"];
    mapUrl = json["map_url"];
    numberOfBedrooms = json["number_of_bedroomes"];
    numberOfCupboards = json["number_of_cupboards"];
    numberOfKitchen = json["number_of_kitchen"];
  }
}
