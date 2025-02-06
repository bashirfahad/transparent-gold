import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/Login/login_screen.dart';

class SellScreen extends StatefulWidget {
  SellScreen({super.key});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  bool _animate = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.45,
                color: Colors.black,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: (){Navigator.pop(context);},
                              child: Icon(Icons.arrow_back,size: 24,color: Colors.white,)),
                          Icon(Icons.info_outline_rounded,size: 24,color: Colors.white,)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.orangeAccent,
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage("assets/Ellipse 24 (1).png"),


                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:125.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Buy Gold",style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 165.0,left: 15,right: 15),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 185.0,left: 15,right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("LIVE GOLD RATE",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w200,color: Colors.white
                            ),)
                          ],
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 250.0,left: 15,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("278,000",style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w700,color: Colors.white
                          ),),
                          Text(" / ",style: GoogleFonts.poppins(fontSize: 28,color: Color(0xffC99303)),),
                          Text("Tola",style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w700,color: Colors.white),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300.0,left: 15,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("1 Tola is 11.6 grams",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey
                          ),),
                        ],
                      ),
                    ),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text("Gold Value",style: GoogleFonts.poppins(fontSize:18,fontWeight: FontWeight.w600,color: Colors.black ),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8), // Light gray background color
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Value in grams',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 1,
                            color: Colors.grey.shade300, // Divider color
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              // Handle "MAX" button press
                            },
                            child: Text(
                              'MAX',
                              style: TextStyle(
                                color: Color(0xffD77E19), // Orange color for MAX text
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text("Amount (PKR)",style: GoogleFonts.poppins(fontSize:18,fontWeight: FontWeight.w600,color: Colors.black ),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8), // Light gray background color
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '00.00 RS',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.shade200
                          ),
                          child: Center(
                            child: Icon(Icons.currency_exchange_sharp,size: 25,color: Color(0xff814D01),),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: (){showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 350,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 50,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            AvatarGlow(
                                              startDelay: const Duration(milliseconds: 1000),
                                              glowColor: Colors.orange,
                                              glowShape: BoxShape.circle,
                                              animate: _animate,
                                              curve: Curves.easeOut,
                                              child:  Material(
                                                  elevation: 8.0,
                                                  shape: CircleBorder(),
                                                  child: Container(height:70,width:70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors:[Color(0xff814D01),Color(0xffFDC703)])),)
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30,),

                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(text: '   Payment method\n', style: GoogleFonts.lato(fontSize: 25,color: Color(0xff252B5C))),
                                                TextSpan(text: 'successfully', style: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xffFDC703))),
                                                TextSpan(text: " Added!",style: GoogleFonts.poppins(fontSize: 25,color: Color(0xff252B5C)))
                                              ]),)],
                                        ),
                                        SizedBox(height: 50,),
                                        Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap:(){Navigator.pop(context);},
                                              child: Container(
                                                height: 55,
                                                width: 250,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.bottomLeft,
                                                      colors: [
                                                        Color(0xff8A5403),
                                                        Color(0xffFDC703),
                                                        Color(0xffFDC703),
                                                        Color(0xff8A5403)
                                                      ],
                                                    )
                                                ),
                                                child: Center(
                                                  child: Text("Finish",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                                ),
                                              ),
                                            )
                                          ],
                                        )

                                      ],
                                    ),
                                  ),
                                );
                              },
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12),))
                          );},
                          child: Container(
                            height: 50,
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xff8A5403),
                                    Color(0xffFDC703),
                                    Color(0xffFDC703),
                                    Color(0xff8A5403)
                                  ],
                                )
                            ),
                            child: Center(
                              child: Text("PROCEED TO SELL",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
