import 'package:cloud_firestore/cloud_firestore.dart';

class UserStatusRepo {
  Stream<String> getuserstatus(String mail) {
    return FirebaseFirestore.instance
        .collection('userstatus')
        .doc(mail)
        .snapshots()
        .map((status) {
      return status['status'];
    });
  }
}
