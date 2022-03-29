import 'package:cloud_firestore/cloud_firestore.dart';

class Art {
  late String description;
  late String image;
  late String title;

  late String docId;

  Art.fromDoc(QueryDocumentSnapshot doc){
    description = doc["description"];
    image = doc["image"];
    title = doc["title"];

    docId = doc.id;
  }
}