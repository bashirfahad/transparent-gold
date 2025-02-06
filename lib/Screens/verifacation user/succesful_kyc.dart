import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Screens/home_screen.dart';
import 'package:blumo_app/utils/bottom_navbar.dart';
class SuccessKYC extends StatelessWidget {
   SuccessKYC({super.key});

  @override
  bool _animate = true;
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AvatarGlow(
                startDelay: const Duration(milliseconds: 1000),
                glowColor: Colors.orangeAccent,
                glowShape: BoxShape.circle,
                animate: _animate,
                curve: Curves.easeOut,
                child:  Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child:Image(
                      image: AssetImage("assets/Successmark.png"),
                    )
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("KYC Completed !",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Text("Thanks for submitting your document we’ll verify it and complete your KYC as soon as possible",textAlign: TextAlign.center,))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TransparentGoldNavBar()));},
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),SizedBox(width: 5,),
                    Text("Back to Home",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
