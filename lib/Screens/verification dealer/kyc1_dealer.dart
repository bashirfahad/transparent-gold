import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/Screens/verification%20dealer/kyc3_dealer.dart';

import 'kyc2_dealer.dart';
class dealerverfication1 extends StatefulWidget {
  const dealerverfication1({super.key});

  @override
  State<dealerverfication1> createState() => _dealerverfication1State();
}

class _dealerverfication1State extends State<dealerverfication1> {
  int activeStep = 1;
  final TextEditingController _cnicController = TextEditingController();

  @override
  void dispose() {
    _cnicController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap:(){Navigator.pop(context);},
                        child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white
                            ),
                            child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 25,))),
                      ),
                      Expanded(
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text("DEALER VERIFACTION",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SizedBox(
                    child: EasyStepper(
                      activeStep: activeStep,
                      lineLength: 60,
                      lineSpace: 0,
                      lineType: LineType.normal,
                      defaultLineColor: Colors.white,
                      finishedLineColor: Colors.orange,
                      activeStepTextColor: Colors.black87,
                      finishedStepTextColor: Colors.black87,
                      internalPadding: 0,
                      showLoadingAnimation: false,
                      stepRadius: 20,
                      showStepBorder: false,
                      lineDotRadius: 1.5,
                      steps: [
                        EasyStep(
                          customStep: CircleAvatar(
                            radius: 40,
                            child: Center(child: Text("1",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                            backgroundColor:
                            activeStep >= 0 ? Colors.orange : Colors.white,
                          ),
                          title: 'CNIC\nFRONT',
                        ),
                        EasyStep(
                          customStep: CircleAvatar(
                            radius:30,
                            child: Text("2",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                            backgroundColor:
                            activeStep >= 1 ? Colors.orange : Colors.white,
                          ),
                          title: 'CNIC\nBACK',

                        ),

                        EasyStep(
                          customStep: CircleAvatar(
                            radius: 30,
                            child: Text("3",style: GoogleFonts.poppins(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                            backgroundColor:
                            activeStep >= 3 ? Colors.orange : Colors.white,
                          ),
                          title: 'PROFILE\nPHOTO',
                        ),

                      ],
                      onStepReached: (index) =>
                          setState(() => activeStep = index),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.75,
                    width: MediaQuery.of(context).size.width*1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            children: [
                              Text("CNIC Card (Back)",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w600),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Please upload your cnic card below for\ncompleting your first step of KYC.",style: GoogleFonts.poppins(fontSize: 14),),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height*0.15,
                            width: MediaQuery.of(context).size.width*0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(),
                                color: Colors.white12
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("upload cnic card back photo",style: GoogleFonts.poppins(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w400),)
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:45,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all()
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Upload",style: GoogleFonts.poppins(fontSize: 18),),
                                          Icon(Icons.add)
                                        ],
                                      ),
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dealerverfication3()));
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
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("         If you are facing any difficulties,\nplease get in touch with us on Whatsapp",style: GoogleFonts.poppins(fontSize: 14,color: Colors.grey.shade700),)
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
      ),
    );
  }
}

