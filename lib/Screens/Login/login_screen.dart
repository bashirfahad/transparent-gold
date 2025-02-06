import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:blumo_app/Screens/Login/sign_up.dart';
import 'package:blumo_app/Screens/choose_user.dart';
import 'package:blumo_app/Screens/home_screen.dart';
import 'package:blumo_app/Screens/verifacation%20user/kyc_user.dart';
import 'package:blumo_app/Screens/splash_screen.dart';

import '../../Utils/bottom_navbar.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passenable = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  void _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      // Navigate to home screen upon successful login
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TransparentGoldNavBar()),
      );
    } catch (e) {
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Navigate to home screen upon successful user creation
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TransparentGoldNavBar()),
        );
      } catch (e) {
        print("Failed to sign in or create user: $e");
        // Handle sign-in or user creation failure, show error message, etc.
      }
    }
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
                          'LOGIN',
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
                            controller: _emailController,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ForgetPassword()));
                              },
                              child: Text(
                                'Forgot Password ?',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                _signInWithEmailAndPassword();
                              },
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: LinearGradient(
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
                                    "GET STARTED",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("dont have an account ?",style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),),
                      InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));},
                          child: Text(" Signup",style: GoogleFonts.poppins(fontSize: 16,color: Colors.blue),))

                    ],
                  )
                ],
              ),


        ),
      ),
    );
  }
}
