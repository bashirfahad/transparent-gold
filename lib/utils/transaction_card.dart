import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blumo_app/utils/transactions_list.dart';
class TransactionCard extends StatefulWidget {
   TransactionCard({super.key, required this.transactionList});
  final TransactionList transactionList;

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width*0.8,
        padding: EdgeInsets.only(top: 15,bottom: 15,left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.orangeAccent)
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.grey.shade200,
              child: Image(
                image: AssetImage("assets/transactionlogo.png"),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                height: 45,
                width: 45,
              ),
            ),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.transactionList.mode,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),),
                Text(widget.transactionList.date,style: GoogleFonts.poppins(fontSize: 18,color: Colors.grey.shade700),)
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.transactionList.amount,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
