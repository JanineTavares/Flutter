import 'package:projeto_final/model/model.dart';


class Character {
 String? firstName;
 String? lastName;
 String? fullName;
 String? title;
 String? family;
 String? image;
 String? imageUrl;


 Character(
      {this.firstName,
      this.lastName,
      this.fullName,
      this.title,
      this.family,
      this.image,
      this.imageUrl});

  factory Character.fromJson(Map<String, dynamic>json){
   return Character (
     firstName: json['firstName'],
     lastName: json['lastName'],
     fullName: json['fullName'],
     title: json['title'],
     family: json['family'],
     image: json['image'],
     imageUrl: json['imageUrl'],

   );
 }

 @override
  String toString() {
    return 'Character{firstName: $firstName, lastName: $lastName, fullName: $fullName, title: $title, family: $family, image: $image, imageUrl: $imageUrl}';
 }
}