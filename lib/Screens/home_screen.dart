import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/utils/transactions_list.dart';

import '../payment Method/add_payment_method.dart';
import '../utils/transaction_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                decoration: BoxDecoration(
                    color: Colors.black,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.orangeAccent,
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage("assets/account_image.jpg",),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Hi,Fahad!",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text("Look what you have !",style: TextStyle(fontSize: 14,color: Colors.grey),),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total my gold",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("2.5 Grams",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("≈",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orangeAccent),)
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("44000 PKR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white70),)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 360,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Deposit",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                                            CircleAvatar(
                                              radius: 50,
                                              backgroundColor: Colors.orangeAccent,
                                              child: CircleAvatar(
                                                radius: 45,
                                                backgroundImage: AssetImage("assets/Ellipse 24 (1).png"),


                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            GestureDetector(
                                                onTap: (){Navigator.pop(context);},
                                                child: Icon(Icons.cancel,size: 30,color: Color(0xffD77E19),))
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Divider(thickness: 2,),
                                        ),
                                        SizedBox(height: 30,),

                                        InkWell(
                                          onTap: (){ showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SizedBox(
                                                  height: 360,
                                                  child: Column(
                                                    children: [
                                                      SizedBox(height: 20,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10.0,right: 0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          children: [
                                                            Text("Deposit",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                                                            CircleAvatar(
                                                              radius: 50,
                                                              backgroundColor: Colors.orangeAccent,
                                                              child: CircleAvatar(
                                                                radius: 45,
                                                                backgroundImage: AssetImage("assets/Ellipse 24 (1).png"),


                                                              ),
                                                            ),
                                                            GestureDetector(
                                                                onTap: (){Navigator.pop(context);},
                                                                child: Icon(Icons.cancel,size: 30,color: Color(0xffD77E19),))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10,right: 10),
                                                        child: Divider(thickness: 2,),
                                                      ),
                                                      SizedBox(height: 30,),

                                                      Container(
                                                        height: 60,
                                                        width: MediaQuery.of(context).size.width*0.85,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(color: Color(0xffF7931A),width: 2),

                                                            borderRadius:BorderRadius.circular(8)
                                                        ),
                                                        child: Center(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(Icons.currency_bitcoin_rounded,color: Color(0xffF7931A),),// Directly use SvgPicture.asset
                                                              SizedBox(width: 8), // Optional: add spacing between the icon and text
                                                              Text(
                                                                "Using Crypto Currency",
                                                                style: GoogleFonts.poppins(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                      ),
                                                ),
                                                      SizedBox(height: 15,),

                                                      InkWell(
                                                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPaymentMethod()));},
                                                        child: Container(
                                                          height: 60,
                                                          width: MediaQuery.of(context).size.width*0.85,
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              border: Border.all(color:Color(0xffF7931A),width: 2 ),

                                                              borderRadius:BorderRadius.circular(8)
                                                          ),
                                                          child: Center(child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Icon(Icons.payments_outlined,color: Color(0xffF7931A),),// Directly use SvgPicture.asset
                                                              SizedBox(width: 8), // Optional: add spacing between the icon and text
                                                              Text(
                                                                "Using Stripe",
                                                                style: GoogleFonts.poppins(
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        ),
                                                      ),




                                                    ],
                                                  ),
                                                );
                                              },
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12),))
                                          );},
                                          child: Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width*0.85,
                                            decoration: BoxDecoration(
                                                color: isSelected==2?Color(0xff185a80):Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.5),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3), // changes position of shadow
                                                  ),
                                                ],
                                                borderRadius:BorderRadius.circular(8)
                                            ),
                                            child: Center(child: Text("Buy from Dealer",style: GoogleFonts.poppins(color: Color((0xffD77E19)),fontWeight: FontWeight.w600,fontSize: 18),),),
                                          ),
                                        ),
                                        SizedBox(height: 15,),

                                        GestureDetector(onTap: (){setState(() {
                                          isSelected=3;
                                        });},
                                          child: Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width*0.85,
                                            decoration: BoxDecoration(
                                                color: isSelected==2?Color(0xff185a80):Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.5),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3), // changes position of shadow
                                                  ),
                                                ],
                                                borderRadius:BorderRadius.circular(8)
                                            ),
                                            child: Center(child: Text("Buy from group fellow",style: GoogleFonts.poppins(color: Color(0xffD77E19),fontWeight: FontWeight.w600,fontSize: 18),),),
                                          ),
                                        ),




                                      ],
                                    ),
                                  );
                                },
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12),))
                            );},
                            child: Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
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
                              child:Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_upward_rounded,size: 25,),
                                    Text("BUY",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: (){showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 360,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10.0,right: 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("SELL",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                                              CircleAvatar(
                                                radius: 50,
                                                backgroundColor: Colors.orangeAccent,
                                                child: CircleAvatar(
                                                  radius: 45,
                                                  backgroundImage: AssetImage("assets/Ellipse 24 (1).png"),


                                                ),
                                              ),
                                              GestureDetector(
                                                  onTap: (){Navigator.pop(context);},
                                                  child: Icon(Icons.cancel,size: 30,color: Color(0xffD77E19),))
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Divider(thickness: 2,),
                                        ),
                                        SizedBox(height: 30,),

                                        GestureDetector(onTap: (){setState(() {
                                          isSelected=3;
                                        });},
                                          child: Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width*0.85,
                                            decoration: BoxDecoration(
                                                color: isSelected==2?Color(0xff185a80):Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.5),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3), // changes position of shadow
                                                  ),
                                                ],
                                                borderRadius:BorderRadius.circular(8)
                                            ),
                                            child: Center(child: Text("Sell to Dealer",style: GoogleFonts.poppins(color: Color((0xffD77E19)),fontWeight: FontWeight.w600,fontSize: 18),),),
                                          ),
                                        ),
                                        SizedBox(height: 15,),

                                        GestureDetector(onTap: (){setState(() {
                                          isSelected=3;
                                        });},
                                          child: Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width*0.85,
                                            decoration: BoxDecoration(
                                                color: isSelected==2?Color(0xff185a80):Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.5),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3), // changes position of shadow
                                                  ),
                                                ],
                                                borderRadius:BorderRadius.circular(8)
                                            ),
                                            child: Center(child: Text("Sell to group fellow",style: GoogleFonts.poppins(color: Color(0xffD77E19),fontWeight: FontWeight.w600,fontSize: 18),),),
                                          ),
                                        ),




                                      ],
                                    ),
                                  );
                                },
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12),))
                            );},
                            child: Container(
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
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
                              child:Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_downward_rounded,size: 25,),
                                    Text("SELL",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Last Transactions",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.shade300,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.sort,color: Colors.orangeAccent,),
                            SizedBox(width: 5,),
                            Text("Sort",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Container(
            height: MediaQuery.of(context).size.height*0.40,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: transactionlist.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return TransactionCard(transactionList: transactionlist[index],);
              },
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
