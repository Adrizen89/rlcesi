
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rlcesi/commons/firebaseKeys.dart';

class FirebaseHandler {


  final authInstance = FirebaseAuth.instance;

  //Login
  Future<User?> signIn(String email, String pwd) async {
    final userCredential = await authInstance.signInWithEmailAndPassword(
      email: email,
      password: pwd);

      final User user = userCredential.user!;
      return user;
  }

  Future<User?> createUser(String email, String pwd, String name) async {
    final userCredential = await authInstance.createUserWithEmailAndPassword(
      email: email, 
      password: pwd);
      final User? user = userCredential.user;
      Map<String, dynamic>usersMap = {
        nameKey : name, 
        imageUrlKey : "",
        followersKey : [user.id],
        followingKey : [],
        uidKey : user.id!
      };
      //Add user
      addUserToFirebase(usersMap);
      return user!;
  }


  //Database
  static final firestoreInstance = FirebaseFirestore.instance;
  final fire_user = firestoreInstance.collection(usersRef);
  addUserToFirebase(Map<String, dynamic> map) {
    fire_user.doc(map[uidKey]);
  }

}