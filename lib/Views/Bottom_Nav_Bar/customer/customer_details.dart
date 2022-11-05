import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/widgets/custom_checkbox.dart';

class CreateCustomer extends StatefulWidget {
  @override
  _CreateCustomerState createState() => _CreateCustomerState();
}

class _CreateCustomerState extends State<CreateCustomer> {
  bool passwordVisible = false;

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  String dropDownValue;
  List<String> cityList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '5'
  ];

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
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: const Icon(Icons.arrow_back),),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Personal Details',
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
                Form(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Address',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: DateTimeFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'D.O.B',
                            hintStyle: heading6.copyWith(color: textGrey),
                            // errorStyle: TextStyle(color: Colors.redAccent),
                            suffixIcon: const Icon(Icons.event_note),
                          ),
                          mode: DateTimeFieldPickerMode.date,
                          autovalidateMode: AutovalidateMode.always,
                          validator: (e) => (e?.day ?? 0) == 1
                              ? 'Please not the first day'
                              : null,
                          onDateSelected: (DateTime value) {
                            print(value);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Section',
                            hintStyle: heading6.copyWith(color: textGrey),
                          ),
                          value: dropDownValue,
                          onChanged: (String Value) {
                            setState(() {
                              dropDownValue = Value;
                            });
                          },
                          items: cityList
                              .map((cityTitle) => DropdownMenuItem(
                              value: cityTitle, child: Text(cityTitle)))
                              .toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textWhiteGrey,
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            hintStyle: heading6.copyWith(color: textGrey),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomCheckbox(),
                          const SizedBox(
                            width: 12,
                          ),
                          Text('Activity', style: regular16pt),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 32,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: GFButton(
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                      text:"Create "
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
