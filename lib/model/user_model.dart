import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String username;
  final String email;
  final String password;

  const UserModel({
    this.id,
    required this.username,
    required this.email,
    required this.password,
  });
  /*toJson() {
    return {
      "Username": username,
      "Phone Number": phoneNumber,
      "Email": email,
      "Password"
    };
  }
*/

  Map<String, dynamic> toJson() {
    return {
      "Username": username,
      "Email": email,
      "Password": password,
    };
  }

  //Map user fetched from firebase to UserModel
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      username: data["Username"],
      email: data["Email"],
      password: data["Password"],
    );
  }
}
