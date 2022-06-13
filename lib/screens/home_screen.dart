import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app_yoga/Pages/EventsPage.dart';
import 'package:fitness_app_yoga/Pages/GymPage.dart';
import 'package:fitness_app_yoga/Pages/HomePage.dart';
import 'package:fitness_app_yoga/Pages/ProfilePage.dart';
import 'package:fitness_app_yoga/Pages/YogaPage.dart';
import 'package:fitness_app_yoga/models/user_mode.dart';
import 'package:fitness_app_yoga/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? userEmail;
  String? userImageURL;
  String? userName;
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    setState(() {});
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    userEmail = googleUser?.email;
    userImageURL = googleUser?.photoUrl;
    // print(userImageURL);
    setState(() {
      userName = googleUser?.displayName;
      print("Hello World");
    });

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    signInWithGoogle();
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      // ignore: unnecessary_this
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  final _pagesdata = [
    Homepages(),
    GymPages(),
    EventsPages(),
    YogaPages(),
    ProfilePages(),
  ];
  int _selectitem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          "Logo here",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: const [
          Icon(
            Icons.notification_add_sharp,
            color: Colors.black,
          ),
          SizedBox(
            width: 40,
          )
        ],
      ),
      body: Material(
        color: Colors.cyan,
        child: Center(
          child: _pagesdata[_selectitem],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.blueGrey,
        // currentIndex: selectedIndex,
        // onTap: onItemTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.g_mobiledata_outlined), label: "Gym"),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note_outlined), label: "Events"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_gymnastics_sharp), label: "Yoga"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Profile")
        ],
        currentIndex: _selectitem,
        onTap: (setValue) {
          setState(() {
            _selectitem = setValue;
          });
        },
      ),
    );
  }
}
