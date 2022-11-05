import 'package:animate_do/animate_do.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/Components/radio/gf_radio.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:gst_app/Models/api_response.dart';
import 'package:gst_app/Services/api_services.dart';
import '../../Models/tds.dart';
import '../Login_And_Register/Theme.dart';
import '../Theme/colors.dart';




class TdsUi extends StatefulWidget {
  const TdsUi({Key key}) : super(key: key);

  @override
  _TdsUiState createState() => _TdsUiState();
}

class _TdsUiState extends State<TdsUi> {


  TextEditingController  type = TextEditingController();
  TextEditingController  status = TextEditingController();
  TextEditingController  section = TextEditingController();
  TextEditingController  amount = TextEditingController();
  DateTime dateTime;
  int pan = 0;

  bool isLoading = false;
  ApiServices apiServices = ApiServices();

  ApiResponse<Tds> _apiResponse;


  @override
  Widget build(BuildContext context) {
    return  isLoading ? const Center(child: CircularProgressIndicator(),) : Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
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
                            'Tax Deducted at Source',
                            style: heading2.copyWith(color: textBlack),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "(Enter the following details)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 13.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/accent.png',
                          width: 99,
                          height: 4,
                          color: KColors.icon,
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
                            "Deductee Type",
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
                          controller: type,
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
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Is Pan Available",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          GFRadio(
                            size: 20,
                            value: 1,
                            groupValue: pan,
                            onChanged: (value) {
                              setState(() {
                                pan = value;
                              });
                            },
                            inactiveIcon: null,
                            activeBorderColor: KColors.primary,
                            radioColor: KColors.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Yes",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GFRadio(
                            size: 20,
                            value: 2,
                            groupValue: pan,
                            onChanged: (value) {
                              setState(() {
                                pan = value;
                              });
                            },
                            inactiveIcon: null,
                            activeBorderColor: KColors.primary,
                            radioColor: KColors.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "No",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 17.5,
                            ),
                          ),

                        ],
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Residential Status",
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
                          controller: status,
                          // keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'status',
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
                            "Section",
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
                          controller: section,
                          // keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'section',
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
                            "Credit Amount",
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
                          controller: amount,
                          // keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'amount',
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
                            "Credit Date",
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
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5,left: 5,right: 5,bottom: 5),
                          child: DateTimeFormField(
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(color: Colors.black45),
                              errorStyle: TextStyle(color: Colors.redAccent),
                              // border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.event_note),
                              hintText: 'Credit Date',

                            ),
                            mode: DateTimeFieldPickerMode.date,
                            // autovalidateMode: AutovalidateMode.always,
                            // validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                            onDateSelected: (DateTime value) {
                              print(value);
                              dateTime = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                FadeInRight(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: GFButton(
                        color: KColors.icon,

                        onPressed: () async {
                          TextEditingController  type = TextEditingController();
                          TextEditingController  status = TextEditingController();
                          TextEditingController  section = TextEditingController();
                          TextEditingController  amount = TextEditingController();
                          FocusScope.of(context).requestFocus(FocusNode());
                          if(type.text.isEmpty || status.text.isEmpty || section.text.isEmpty || amount.text.isEmpty ){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Fill The Given Field"),));
                          }else{

                            setState(() {
                              isLoading = true;
                            });
                            final insert = Tds(
                                deducteeType: type.text,
                                isPanAvailable: pan == 1 ? "Yes" : "No",
                                residentialStatus: status.text,
                                section: section.text,
                                creditAmount: int.parse(amount.text),
                                creditDate: dateTime
                            );
                            _apiResponse = await apiServices.tds(insert);


                            if(_apiResponse.data != null){
                              showDialog(context: context, builder: (_)=>        AlertDialog(
                                title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[

                                      const Text("Threshold Amount",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),),
                                      Text(_apiResponse.data.thresholdAmount.toString() ?? "No"),
                                      const Text("Due Date",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),),
                                      Text(_apiResponse.data.dueDate),

                                      const Text("TDS Rate",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),),
                                      Text(_apiResponse.data.tdsRate?? "No"),
                                      const Text("TDS Amount",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5,
                                          fontSize: 17.5,
                                        ),),
                                      Text(_apiResponse.data.tdsAmount.toString()?? "mo"),
                                    ]
                                ),


                              ));

                              print("------------------SUCCESS-----------------");
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Something Went Wrong"),));

                              print("------------------ERROR-----------------");
                            }
                            setState(() {
                              isLoading = false;
                            });
                          }

                        },
                        text: "Calculate"),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
