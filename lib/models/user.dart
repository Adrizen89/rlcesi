import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rlcesi/commons/firebaseKeys.dart';

class Member {

   String? uid;
   String? name;
   String? imageUrl;
   List<dynamic>? followers;
   List<dynamic>? following;
   DocumentReference? ref;
   String? documentId;
   String? description;


 Member(DocumentSnapshot snapshot) {
  ref = snapshot.reference;
  uid = snapshot.id;
  Map<String, dynamic> datas = 
  snapshot.data as Map<String, dynamic>;
  name = datas[nameKey];
  imageUrl = datas[imageUrlKey]; 
  followers = datas[followersKey]; 
  description = datas[descriptionKey]; 
  following = datas[followingKey];  
  
  print(snapshot.data());
 }

  Map<String, dynamic> toMap(){
    return {
      uidKey : uid,
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