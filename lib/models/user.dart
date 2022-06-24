import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rlcesi/commons/firebaseKeys.dart';

class Member {

  String? id;
  String? name;
  String? imageUrl;
  List<dynamic>? followers;
  List<dynamic>? following;
  DocumentReference? ref;
  String? documentId;
  String? description;

  Member(DocumentSnapshot snapshot) {
    print(snapshot);
  }
  Map<String, dynamic> toMap(){
    return {
      uidKey : id,
      nameKey : name,
      imageUrlKey : imageUrl,
      followersKey : followers,
      followingKey : following,
      refKey : ref,
      documentIdKey : documentId,
      descriptionKey : description
    };
  }
}