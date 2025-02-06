import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:blumo_app/Screens/verifacation%20user/kyc_user.dart';
import 'package:blumo_app/Screens/verification%20dealer/kyc_dealer.dart';
class ChooseUser extends StatefulWidget {
  const ChooseUser({super.key});

  @override
  State<ChooseUser> createState() => _ChooseUserState();
}

class _ChooseUserState extends State<ChooseUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){Navigator.pop(context);},
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.orange,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Center(
                          child: Icon(Icons.arrow_back_ios_new_rounded,size: 30,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  GradientText(
                    'Register yourself as',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: [
                      Color(0xff814D01),
                      Color(0xffF7C203),
                      Color(0xff814D01),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>userverfication()));},
                child: Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff814D01),
                        Color(0xffEFB813),
                        Color(0xff814D01),

                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.orangeAccent,
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.black,
                            child: Center(
                              child: Icon(Icons.person_outlined,size: 70,color: Color(0xffEFB813),),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("User",style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Text("System allows you to buy\n        "
                                "and sell gold with\n             "
                                " your choice.",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),maxLines: 3,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>dealerverfication()));},
                child: Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff814D01),
                        Color(0xffEFB813),
                        Color(0xff814D01),

                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.orangeAccent,
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.black,
                            child: Center(
                              child: Icon(Icons.sell_outlined,size: 70,color: Color(0xffEFB813),),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Dealer",style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Text("System allows you to buy\n        "
                                "and sell gold with\n             "
                                " your choice.",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),maxLines: 3,)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
