import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethods {
  Future getUserByUserName(String username) async {
    return await Firestore.instance
        .collection('users')
        .where('name', isEqualTo: username)
        .getDocuments();
  }

  Future getUserByUserEmail(String userEmail) async {
    return await Firestore.instance
        .collection('users')
        .where('email', isEqualTo: userEmail)
        .getDocuments();
  }

  upLoadUserInfo(userMap) {
    FirebaseFirestore.instance.collection('users').add(userMap);
  }

  createChatRoom(String chatRoomId, chatRoomMap) {
    FirebaseFirestore.instance
        .collection('ChatRoom')
        .doc(chatRoomId)
        .set(chatRoomMap)
        .catchError((e) {
      print(e.toString());
    });
  }

  addConversationMessages(String chatRoomId, messageMap) {
    FirebaseFirestore.instance
        .collection('ChatRoom')
        .doc(chatRoomId)
        .collection('chats')
        .add(messageMap)
        .catchError((e) {
      print(e.toString());
    });
  }

  getConversationMessages(String chatRoomId) async {
    return await FirebaseFirestore.instance
        .collection('ChatRoom')
        .doc(chatRoomId)
        .collection('chats')
        .orderBy('time', descending: false)
        .snapshots();
  }

  getChatRoom(String userName) async {
    return await FirebaseFirestore.instance
        .collection('ChatRoom')
        .where('users', arrayContains: userName)
        .snapshots();
  }
}
