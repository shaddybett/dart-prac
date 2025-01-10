import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';

class Auth {
  Auth() {
    initializeApp();
  }
// lib/repository/auth/firebase_auth.dart
  Future<void> registerWithEmailPassword(String email, String password) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var user = userCredential.user;
      print("User registered: ${user!.uid}");
    } catch (e) {
      print("Error registering user: $e");
    }
  }

  Future<void> initializeApp() async {
    await Firebase.initializeApp();
  }

  Future<void> signInWithPhone(
      String phoneNumber,
      BuildContext context,
      Function onCodeSent,
      Function(String) onError) async {
    Logger().i('Phone number: $phoneNumber');
    final FirebaseAuth auth = FirebaseAuth.instance;
    auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
        print("Phone auto-retrieval or instant sign-in completed");
      },
      verificationFailed: (FirebaseAuthException e) {
        onError("Verification failed: ${e.message}");
      },
      codeSent: (String verificationId, int? resendToken) {
        print("Code sent to $phoneNumber");
        onCodeSent(verificationId, resendToken);   
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("Code auto-retrieval timeout");
      },
    );
  }


}
 
