import 'package:flutter/material.dart';
import 'package:gst_app/Models/ifsc.dart';
import 'package:gst_app/Services/api_services.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';




class BankDetails extends StatefulWidget {
   BankDetails({Key key,this.ifsc}) : super(key: key);
  String ifsc;

  @override
  _BankDetailsState createState() => _BankDetailsState();
}
class _BankDetailsState extends State<BankDetails> {

  TextEditingController ifscCont = TextEditingController();
  TextEditingController bankCont = TextEditingController();
  TextEditingController branchCont = TextEditingController();
  TextEditingController addressCont = TextEditingController();
  TextEditingController stateCont = TextEditingController();
  TextEditingController contactCont = TextEditingController();
  TextEditingController cityCont = TextEditingController();
  TextEditingController districtCont = TextEditingController();



  @override
  void initState() {
    ifscCont.text = widget.ifsc;
    getBankDetails();
    super.initState();
  }
  Ifsc bank;
  bool isLoading ;
  String errorMessage ;
  ApiServices apiServices =ApiServices();
  getBankDetails(){
    setState(() {
      isLoading = true;
    });
    apiServices.ifsc(widget.ifsc).then((response) {
      setState(() {
        isLoading = false;
      });

      if (response.error) {
        errorMessage = response.errorMessage ?? "An error Occurred";
      }
      bank = response.data ;
      bankCont.text = bank.bank.bank ;
      branchCont.text = bank.bank.branch;
      addressCont.text = bank.bank.address;
      stateCont.text = bank.bank.state;
      contactCont.text = bank.bank.contact;
      cityCont.text = bank.bank.city;
      districtCont.text = bank.bank.district;
      // directorCont.text = mca.company.directorsSignatoryDetails as String;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                            'Bank Details',
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
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
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
                          controller: bankCont,
                          decoration: InputDecoration(
                            hintText: 'Bank Name',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Branch",
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
                          controller: branchCont,
                          decoration: InputDecoration(
                            hintText: 'Branch',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Address",
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
                          controller: addressCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Address',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "State",
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
                          controller: stateCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'State',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Contact",
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
                          controller: contactCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Contact',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "City",
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
                          controller: cityCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'City',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "District",
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
                          controller: districtCont,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'District',
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
