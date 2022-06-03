import 'package:injectable/injectable.dart';

class AuthStatus {
  // static const String ERROR_WEAK_PASSWORD = 'weak-password';
  // static const String ERROR_INVALID_EMAIL = 'invalid-email';
  // static const String ERROR_EMAIL_ALREADY_IN_USE = 'email-already-in-use';
  // static const String ERROR_WRONG_PASSWORD = 'ERROR_WRONG_PASSWORD';
  // static const String ERROR_USER_NOT_FOUND = 'user-not-found';
}

@lazySingleton
class AuthService {
  // final _usersKey = 'users';
  // ImageService imageService = locator<ImageService>();
  //
  // Future<String> signUp(UserModel user, String password) async {
  //   try {
  //     var authResult = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(
  //             email: user.email, password: password);
  //     user.id = authResult.user.uid;
  //     var saveResult = await saveUser(user);
  //     if (saveResult != "success") return saveResult;
  //     StaticInfo.userModel = user;
  //     return "success";
  //   } catch (error) {
  //     print("error in SigningUp the user : ${error.code}");
  //     return "${error.code}";
  //   }
  // }
  //
  // Future<String> login(String email, String password) async {
  //   try {
  //     var responseToBeReturned;
  //     var authResult = await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: email, password: password);
  //     var response = await getUser(authResult.user.uid);
  //     if (response != null) {
  //       responseToBeReturned = "success";
  //     } else {
  //       responseToBeReturned = "fail";
  //     }
  //     return responseToBeReturned;
  //   } catch (error) {
  //     print("Erro in logging the user : ${error?.message}//////");
  //     return "${error?.code}";
  //   }
  // }
  //
  // Future<dynamic> getCurrentUser() async {
  //   var result = FirebaseAuth.instance.currentUser;
  //   var responseToBerReturned;
  //   if (result == null) {
  //     responseToBerReturned = false;
  //   } else {
  //     var response = await getUser(result.uid);
  //     print(response);
  //     if (response != null) {
  //       responseToBerReturned = true;
  //     } else {
  //       print("returning fill details");
  //       responseToBerReturned = "fill details";
  //     }
  //   }
  //   print(responseToBerReturned);
  //   return responseToBerReturned;
  // }

  // Future<String> resetPassword(String email) async {
  //   try {
  //     await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  //
  //     return "success";
  //   } catch (err) {
  //     return err.code;
  //   }
  // }

  //Logout from firebase

  // Future<void> logout() async {
  //   await FirebaseAuth.instance?.signOut();
  //   StaticInfo.userModel = null;
  //   UserPreference().clearUserData();
  //   await locator.reset(dispose: false);
  //   await setupLocator();
  //   // Get.offAll(() => LoginView());
  // }

  //Save User to firebase

  // Future<String> saveUser(UserModel user) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection(_usersKey)
  //         .doc(user.id)
  //         .set(user.toMap(), SetOptions(merge: true));
  //     return "success";
  //   } catch (e) {
  //     print("error in Saving user");
  //
  //     return e;
  //   }
  // }

  //Get User from Firebase

  // Future getUser(String uid) async {
  //   try {
  //     StaticInfo.userModel = UserModel.fromMap((await FirebaseFirestore.instance
  //             .collection(_usersKey)
  //             .doc(uid)
  //             .get())
  //         .data());
  //     return StaticInfo.userModel;
  //   } catch (e) {
  //     print("Error in assigning static info :$e");
  //     return null;
  //   }
  // }
  //
  //Delete User from Firebase

  // Future deleteUserAccount() async {
  //   try {
  //     await FirebaseAuth.instance.currentUser.delete();
  //     return true;
  //   } on FirebaseAuthException catch (e) {
  //     print(e.code);
  //     print(e.message);
  //     return e.message;
  //   }
  // }

  //UpdateUser from firebase

  // Future updateUser(UserModel user) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection(_usersKey)
  //         .doc(user.id)
  //         .set(user.toMap(), SetOptions(merge: true));
  //     return user;
  //   } catch (e) {
  //     print("error in Saving user");
  //     return false;
  //   }
  // }

 //UpdateAuthPassword from firebase

// updateAuthEmail(String email) async {
  //   try {
  //     await FirebaseAuth.instance.currentUser.updateEmail(email);
  //     return true;
  //   } on FirebaseAuthException catch (e) {
  //     print(e.code);
  //     print(e.message);
  //     return e.message;
  //   }
  // }

  //UpdateAuthPassword from firebase

  // updateAuthPassword(String password) async {
  //   try {
  //     await FirebaseAuth.instance.currentUser.updatePassword(password);
  //     return true;
  //   } on FirebaseAuthException catch (e) {
  //     print(e.code);
  //     print(e.message);
  //     return e.message;
  //   }
  // }

  //Clear userData from Firebase

  // clearUserData() async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection(_usersKey)
  //         .doc(StaticInfo.userModel.id)
  //         .delete();
  //     return true;
  //   } catch (e) {
  //     print("error in Saving user");
  //     return false;
  //   }
  // }
}
