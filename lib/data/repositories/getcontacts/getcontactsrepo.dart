import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/get_contacts_model/get_contacts_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetContactsRepo implements IGetContactsrepo {
  @override
  Future<Either<MainFailures, List<GetContactsModel>>> getallcontacts() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      String uid = FirebaseAuth.instance.currentUser!.uid;
      final snapshot = await firestore
          .collection('Contacts')
          .doc(uid)
          .collection('user-contacts')
          .get();
      List<GetContactsModel> contactslist = snapshot.docs.map((doc) {
        return GetContactsModel.fromJson(doc.data());
      }).toList();
      return right(contactslist);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }
}
