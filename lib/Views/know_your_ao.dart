import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:animate_do/animate_do.dart';

import 'Calculator/ifsc_calcii/theme.dart';

class KnowYourAo extends StatefulWidget {
  const KnowYourAo({Key key}) : super(key: key);

  @override
  _KnowYourAoState createState() => _KnowYourAoState();
}

class _KnowYourAoState extends State<KnowYourAo> {
  int _currentStep = 0;
  int groupValue = 0;
  StepperType stepperType = StepperType.vertical;

  String _code = '';
  String dropDownValue;
  List<String> cityList = ['1', '2', '3', '4', '5', '6', '5'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FadeInDown(
          delay: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 500),
          child: Column(
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
                          'Know Your Jurisdictional\nAssessing Officer',
                          style: heading2.copyWith(color: textBlack),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/images/accent.png',
                        color: Colors.blue.shade900,
                        width: 99,
                        height: 4,
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(
                    accentColor: Colors.blue.shade900,
                    primarySwatch: Colors.blue,
                    colorScheme:
                        ColorScheme.light(primary: Colors.blue.shade900),
                  ),
                  child: Stepper(
                    type: stepperType,
                    physics: const ScrollPhysics(),
                    currentStep: _currentStep,
                    onStepTapped: (step) => tapped(step),
                    onStepContinue: continued,
                    onStepCancel: cancel,
                    steps: <Step>[
                      Step(
                        title: const Text('Enter Details'),
                        content: FadeInDown(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Column(
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  bottom: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "PAN",
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
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'PAN',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Mobile Number",
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
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'Mobile Number',
                                    hintStyle:
                                        heading6.copyWith(color: textGrey),
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 0
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: const Text('Verification'),
                        content: Column(
                          children: <Widget>[
                            FadeInDown(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 500),
                              child: Text(
                                "Please enter the 4 digit code sent to \n +93 706-399-999",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade500,
                                    height: 1.5),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Verification Code Input
                            FadeInDown(
                              delay: const Duration(milliseconds: 600),
                              duration: const Duration(milliseconds: 500),
                              child: VerificationCode(
                                length: 4,
                                textStyle: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                                underlineColor: Colors.black,
                                keyboardType: TextInputType.number,
                                underlineUnfocusedColor: Colors.black,
                                onCompleted: (value) {
                                  setState(() {
                                    _code = value;
                                  });
                                },
                                onEditing: (value) {},
                              ),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: const Text('Jurisdictional A.O. Details'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Mobile Number'),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.list),
        //   onPressed: switchStepsType,
        // ),
      ),
    );
  }

  // switchStepsType() {
  //   setState(() => stepperType == StepperType.vertical
  //       ? stepperType = StepperType.horizontal
  //       : stepperType = StepperType.vertical);
  // }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
