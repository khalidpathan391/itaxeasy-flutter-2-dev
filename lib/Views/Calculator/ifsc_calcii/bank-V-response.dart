import 'package:flutter/material.dart';
import 'package:gst_app/Models/bank-response.dart';
import 'package:gst_app/Models/bank-verify.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';


class BankVerifyResponse extends StatefulWidget {
   BankVerifyResponse({Key key, this.contact,this.ifsc,this.account,this.name}) : super(key: key);

  String account;
  String name;
  String ifsc;
  String contact;

  @override
  _BankVerifyResponseState createState() => _BankVerifyResponseState();
}

class _BankVerifyResponseState extends State<BankVerifyResponse> {



  TextEditingController accountCont = TextEditingController();
  TextEditingController banknameCont = TextEditingController();
  TextEditingController amountCont = TextEditingController();
  TextEditingController idCont = TextEditingController();

  ApiServices apiServices = ApiServices();

  bool isLoading = false;

@override
  void initState() {
   insert = Bankdetails(
      accountNumber: widget.account,
      name: widget.name,
      ifsc: widget.ifsc,
      mobile: widget.contact);
   getBankDetails();
    super.initState();
  }
  var insert;
  BankResponse bankRes;

  String errorMessage ;

  getBankDetails(){
    setState(() {
      isLoading = true;
    });
    apiServices.bankVerify(insert).then((response) {
      setState(() {
        isLoading = false;
      });

      if (response.error) {
        errorMessage = response.errorMessage ?? "An error Occurred";
      }
      bankRes = response.data ;
      accountCont.text = bankRes.bankResponse.accountExists.toString();
      banknameCont.text = bankRes.bankResponse.nameAtBank;
      amountCont.text = bankRes.bankResponse.amountDeposited.toString();
      idCont.text = bankRes.bankResponse.referenceId.toString();

    });

  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'Bank Verification',
                                  style: heading2.copyWith(color: textBlack),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                'assets/images/accent.png',
                                width: 99,
                                height: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Form(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Account Exists",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: accountCont,
                                decoration: InputDecoration(
                                  hintText: 'Account ',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Bank Name",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: banknameCont,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: 'bank name:',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Amount Deposited",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: amountCont,
                                // keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: 'bank name:',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Reference Id",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 17.5,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: textWhiteGrey,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: TextFormField(
                                controller: idCont,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: 'id',
                                  hintStyle: heading6.copyWith(color: textGrey),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
