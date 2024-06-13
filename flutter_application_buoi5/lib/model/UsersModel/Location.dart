// // ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

 import 'package:flutter_application_buoi5/model/UsersModel/Street.dart';
 import 'package:flutter_application_buoi5/model/UsersModel/Coordinates.dart';
 import 'package:flutter_application_buoi5/model/UsersModel/Timezone.dart';
// class Location {
//   Street? street;
//   String? city;
//   String? state;
//   String? country;
//   String? postcode;
//   Coordinates? coordinates;
//   Timezone? timezone;

//   Location(
//       {this.street,
//       this.city,
//       this.state,
//       this.country,
//       this.postcode,
//       this.coordinates,
//       this.timezone});

//   Location.fromJson(Map<String, dynamic> json) {
//     street =
//         json['street'] != null ? new Street.fromJson(json['street']) : null;
//     city = json['city'];
//     state = json['state'];
//     country = json['country'];
//     postcode = json['postcode'];
//     coordinates = json['coordinates'] != null
//         ? new Coordinates.fromJson(json['coordinates'])
//         : null;
//     timezone = json['timezone'] != null
//         ? new Timezone.fromJson(json['timezone'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.street != null) {
//       data['street'] = this.street!.toJson();
//     }
//     data['city'] = this.city;
//     data['state'] = this.state;
//     data['country'] = this.country;
//     data['postcode'] = this.postcode;
//     if (this.coordinates != null) {
//       data['coordinates'] = this.coordinates!.toJson();
//     }
//     if (this.timezone != null) {
//       data['timezone'] = this.timezone!.toJson();
//     }
//     return data;
//   }
// }


class Location {
  String? street;
  String? city;
  String? state;
  String? country;
  String? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.postcode,
      this.coordinates,
      this.timezone});

  Location.fromJson(Map<String, dynamic> json) {
    street =
        json['street'] != null ? Street.fromJson(json['street']).name : null;
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'].toString(); // Chuyển đổi postcode thành chuỗi
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    timezone = json['timezone'] != null
        ? new Timezone.fromJson(json['timezone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['postcode'] = this.postcode;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates!.toJson();
    }
    if (this.timezone != null) {
      data['timezone'] = this.timezone!.toJson();
    }
    return data;
  }
}
