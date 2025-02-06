import 'package:blumo_app/Screens/home_screen.dart';

import "add_payment_method1.dart";
import 'package:blumo_app/Utils/bank_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class AddPaymentMethod extends StatefulWidget {
  const AddPaymentMethod({super.key});

  @override
  State<AddPaymentMethod> createState() => _AddPaymentMethodState();
}

class _AddPaymentMethodState extends State<AddPaymentMethod> {
  late List<bool> isSelected1;

  @override
  void initState() {
    super.initState();
    isSelected1 = List.generate(3, (index) => false);// Initialize all items as not selected
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){Navigator.pop(context, MaterialPageRoute(builder: (context)=>HomeScreen()));},

                            child: Container(height: 50,width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.shade300
                              ),
                              child: Center(
                                child: Icon(Icons.arrow_back_ios_new),
                              ),
                            ),
                          ),
                          Container(
                            height: 36,
                            width: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.shade300
                            ),
                            child: Center(child: Text("Skip"),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right:
                      15),
                      child: Row(
                        children: [
                      RichText(
                      text: TextSpan(children: [
                          TextSpan(text: 'Add your\n', style: GoogleFonts.lato(fontSize: 25,color: Color(0xff252B5C))),
                        TextSpan(text: 'Payment method\n\n', style: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xff234F68))),
                        TextSpan(text: "You can edit this later on your account settings",style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff53587A)))
                        ]),)
                        ],
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     Image.asset("assets/payment/pngwing.com.png",height: 280,)
                    ],),
                    Padding(
                     padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: Container(
                    height: 55,
                     child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          BankCategory(
                            press: () {
                              setState(() {
                                for (int i = 0; i < isSelected1.length; i++) {
                                  isSelected1[i] = false;
                                }
                                isSelected1[0] = true; // Select the first item
                              });
                            },
                            title: "PayPal",
                            imagePath: "assets/payment/Paypal - White.png",
                            isSelected: isSelected1[0], // Pass the selection state
                          ),
                          BankCategory(
                            press: () {
                              setState(() {
                                for (int i = 0; i < isSelected1.length; i++) {
                                  isSelected1[i] = false;
                                }
                                isSelected1[1] = true; // Select the second item
                              });
                            },
                            title: "MasterCard",
                            imagePath: "assets/payment/Mastercard - Normal.png",
                            isSelected: isSelected1[1], // Pass the selection state
                          ),
                          BankCategory(
                            press: () {
                              setState(() {
                                for (int i = 0; i < isSelected1.length; i++) {
                                  isSelected1[i] = false;
                                }
                                isSelected1[2] = true; // Select the third item
                              });
                            },
                            title: "Visa",
                            imagePath: "assets/payment/Visa - Normal.png",
                            isSelected: isSelected1[2], // Pass the selection state
                          ),
                        ],
                      ),
                    ],
                  ),),
      ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              suffixIcon: Icon(Icons.person_outline_rounded,color:Color(0xff252B5C) ,)
                            ),
                          ),
                          SizedBox(height: 16),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                suffixIcon: Icon(Icons.email_outlined,color:Color(0xff252B5C))
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(bottom:40,left:0,right:0,child: Center(
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPaymentMethod1()));},

                  child: Container(height: 60,width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff185A80),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Submit",style: GoogleFonts.poppins(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold ),),),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
