import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Theme/colors.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({Key key}) : super(key: key);

  @override
  State<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration:   BoxDecoration(
                          color: Colors.white ,
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child:  const Icon(Icons.chevron_left_rounded,color: KColors.icon,size: 35,),
                      ),
                    ),
                    Text(
                      "Recent Transactions",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:  KColors.headline,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration:   BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: const Color(0xffE3E9ED),
                          ),
                          color: Colors.white ,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child:  const Icon(Icons.more_horiz_rounded,color: KColors.icon,size: 35,),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Today",
                    style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff57435C),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                transactionCards(context),
                const SizedBox(
                  height: 20,
                ),
                Divider(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Yesterday",
                    style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff57435C),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                transactionCards(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget transactionCards(BuildContext context){
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor:  Color(0xffE3E9ED),
            child: Icon(
              Icons.account_circle_rounded,
              color: KColors.icon,
              size: 35,
            ),
          ),
          title: Text("Tiana Saris", style: GoogleFonts.dmSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff57435C),
          ),),
          subtitle: Text("BCA • 2468 3545 ****", style: GoogleFonts.dmSans(
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            color: const Color(0xff78828A),
          ),),
          trailing: Text("200", style: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const  Color(0xff57435C),
          ),),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor:  Color(0xffE3E9ED),
            child: Icon(
              Icons.account_circle_rounded,
              color: KColors.icon,
              size: 35,
            ),
          ),
          title: Text("Mukul Bedi", style: GoogleFonts.dmSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff57435C),
          ),),
          subtitle: Text("Salary", style: GoogleFonts.dmSans(
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            color: const Color(0xff78828A),
          ),),
          trailing: Text("Cr 30000", style: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const  Color(0xff57435C),
          ),),
        ),
      ],
    );
  }
}
