import 'package:back/view/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  //FacebookLogin _facebookLogin= FacebookLogin();
  FirebaseAuth _auth = FirebaseAuth.instance;
  // Rx<User> _user = Rx<User>();
  //
  // String get user => _user.value?.email;
  String email, password, name;
  @override
  void onInit() {
    super.onInit();
  // _user.bindStream(_auth.authStateChanges());
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    await _auth.signInWithCredential(credential).then((user) {
      // saveUser(user);
      // Get.offAll(HomeView());
    });
  }

  void signWithEmailAndPassword() {
    _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value);
      Get.offAll(HomeView());
    }).catchError((onError) {
      Get.snackbar('error login acount', onError.message,
          colorText: Colors.black, snackPosition: SnackPosition.BOTTOM);
    });
  }
  void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      //     .then((user) async {
      // //  saveUser(user);
      // }
      //);

      Get.offAll(HomeView());
    } catch (e) {
      print(e.message);
      Get.snackbar(
        'Error login account',
        e.message,
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

}
