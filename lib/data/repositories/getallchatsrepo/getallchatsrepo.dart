import 'package:chatapp/data/models/users_model/users_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetAllChatRepo {
  final user = FirebaseAuth.instance.currentUser;

  Stream<List<UsersModel>> getUsersStream() {
    return FirebaseFirestore.instance
        .collectionGroup('chatrooms')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs
          .where((doc) =>
              doc.id == user!.email! || doc.data()['tomail'] == user!.email)
          .map((doc) {
        return UsersModel.fromJson(doc.data());
      }).toList();
    });
  }
}

getallcolelctions() async {
  final docids = await FirebaseFirestore.instance.collection('contacted').get();
  return docids.docs;
}

Stream<List<UsersModel>> getUsersStream() {
  getallcolelctions();
  return FirebaseFirestore.instance
      .collectionGroup('chatrooms')
      .snapshots()
      .map((querySnapshot) {
    return querySnapshot.docs.map((doc) {
      return UsersModel.fromJson(doc.data());
    }).toList();
  });
}
