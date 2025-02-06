import 'package:blumo_app/Screens/Login/login_screen.dart';
import 'package:blumo_app/Screens/Login/otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:blumo_app/Screens/Login/Verfication_email.dart';
import 'package:blumo_app/Screens/choose_user.dart';
import 'package:blumo_app/Screens/home_screen.dart';
import 'package:blumo_app/Screens/verifacation%20user/kyc_user.dart';
import 'package:blumo_app/Screens/splash_screen.dart';

import 'forget_password_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passenable = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _contactNumberController = TextEditingController();

  Future<void> _signUp() async {
    try {
      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Navigate to the next screen or perform any desired action upon successful signup
      print('User signed up: ${userCredential.user!.uid}');
    } catch (e) {
      // Handle signup errors
      _showFailedDialog();
    }
  }
  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text('Successfully Login',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xff185A80)),),
          content: Text('You have successfully signed up.',style: GoogleFonts.poppins()),
          actions: <Widget>[
            TextButton(
              child: Text('OK',style: GoogleFonts.poppins(),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void _showFailedDialog(){
    showDialog(
        context:context,
        builder:(BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text("User Already Exist",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xff185A80)
            ),),
            content: Text("User Already Exist",style: GoogleFonts.poppins(),),
            actions: [
              TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));}, child: Text("OK",style: GoogleFonts.poppins(),))
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1919),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage("assets/pngegg (1) 1.png")),
              SizedBox(height: 60),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GradientText(
                      'SIGNUP',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                      colors: [
                        Color(0xff814D01),
                        Color(0xffF7C203),
                        Color(0xff814D01),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          labelText: "Email",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: passenable,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          labelText: "Password",
                          prefixIcon: Icon(
                            Icons.password_rounded,
                            color: Colors.grey,
                          ),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                passenable = !passenable;
                              });
                            },
                            icon: Icon(passenable
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined),
                          ),
                        ),
                        style: TextStyle(color: Color(0xff185A80)),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: TextFormField(
                        controller: _contactNumberController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          labelText: "Phone Number",
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async{
                          await  _signUp();

                           await Navigator.push(context, MaterialPageRoute(builder: (_)=>SendOtp()));
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient:const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xff8A5403),
                                  Color(0xffFDC703),
                                  Color(0xffFDC703),
                                  Color(0xff8A5403),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),

            ],
          ),


        ),
      ),
    );
  }
}
