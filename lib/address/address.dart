class Address {
  String? streetName;
  String? streetNumber;
  String? city;
  String? state;
  String? country;
  String? postalCode;
  Address.fromJson(Map<String,dynamic> jsonObject){
    this.streetName = jsonObject["street_name"];
    this.streetNumber =jsonObject["street_number"];
    this.city = jsonObject["city"];
    this.state = jsonObject["state"];
    this.country = jsonObject["country"];
    this.postalCode =jsonObject["postal_code"];
  }
}