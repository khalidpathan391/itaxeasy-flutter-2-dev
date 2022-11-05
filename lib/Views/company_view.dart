import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gst_app/Models/mca.dart';
import 'package:gst_app/Services/api_services.dart';

import 'Calculator/ifsc_calcii/theme.dart';

class CompanyView extends StatefulWidget {
   CompanyView({Key key, this.data}) : super(key: key);
  String data;
  @override
  _CompanyViewState createState() => _CompanyViewState();
}

class _CompanyViewState extends State<CompanyView> {
  final bool _status = true;


  TextEditingController cin = TextEditingController();
  TextEditingController companyCont = TextEditingController();
  TextEditingController categoryCont = TextEditingController();
  TextEditingController capitalCont = TextEditingController();
  TextEditingController directorCont = TextEditingController();
  TextEditingController locationCont = TextEditingController();
  TextEditingController typeCont = TextEditingController();
  TextEditingController activity = TextEditingController();

  @override
  void initState() {
    cin.text = widget.data;
    getCompany();
    super.initState();
  }
  Mca mca;
  bool isLoading ;
  String errorMessage ;
  ApiServices apiServices =ApiServices();
  getCompany(){
    setState(() {
      isLoading = true;
    });
    apiServices.mca(widget.data).then((response) {
      setState(() {
        isLoading = false;
      });

      if (response.error) {
        errorMessage = response.errorMessage ?? "An error Occurred";
      }
      mca = response.data ;
      companyCont.text = mca.company.companyMasterData.companyName;
      capitalCont.text = mca.company.companyMasterData.paidUpCapitalRs;
      categoryCont.text = mca.company.companyMasterData.companyCategory;
      locationCont.text = mca.company.companyMasterData.registeredAddress;
      typeCont.text = mca.company.companyMasterData.classOfCompany;
      activity.text = mca.company.companyMasterData.companyStatusForEfiling;
      // directorCont.text = mca.company.directorsSignatoryDetails as String;
    });

  }

  @override
  Widget build(BuildContext context) {
    return isLoading? const Center(child: CircularProgressIndicator()):Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0),
            child: FadeInDown(
              delay: const Duration(milliseconds: 500),
              duration: const Duration(milliseconds: 500),
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
                              'Company Details',
                              style: heading2.copyWith(color: textBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
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
                  FadeInDown(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 600),
                    child: Form(
                      child: Column(
                        children: [
                           const Padding(
                             padding: EdgeInsets.only(left: 10,bottom: 10),
                             child: Align(alignment: Alignment.centerLeft,
                              child: Text("Company Name",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                          ),
                           ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: companyCont,

                              enabled: !_status,
                              decoration: InputDecoration(
                                hintText: 'Company Name',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("Name of Directors",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: directorCont,
                              enabled: !_status,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: 'Name of Directors',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("Paid up capital",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: capitalCont,
                              enabled: !_status,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: 'Paid up capital',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("Share capital",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              enabled: !_status,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: 'Share capital',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("Category",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: categoryCont,
                              enabled: !_status,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Category ',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("Location",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: locationCont,
                              enabled: !_status,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Location',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("CIN ",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: cin,
                              enabled: !_status,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'CIN NUmber',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("Type of Company",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: typeCont,
                              enabled: !_status,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'type',
                                hintStyle: heading6.copyWith(color: textGrey),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                            child: Align(alignment: Alignment.centerLeft,
                              child: Text("Activity",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 17.5,
                                ),),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: textWhiteGrey,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: TextFormField(
                              controller: activity,
                              enabled: !_status,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Active/Unactive ',
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
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
