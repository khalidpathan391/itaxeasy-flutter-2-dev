import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/Components/radio/gf_radio.dart';

import 'Calculator/ifsc_calcii/Theme.dart';

class ITD extends StatefulWidget {
  const ITD({Key key}) : super(key: key);

  @override
  _ITDState createState() => _ITDState();
}

class _ITDState extends State<ITD> {
  String _code = '';

  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  bool groupValue = false;

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
                        'Authenticate Notice/\nOrder Issued by ITD',
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
                    primarySwatch: Colors.blue.shade900,
                    colorScheme:
                        ColorScheme.light(primary: Colors.blue.shade900)),
                child: Stepper(
                  type: stepperType,
                  physics: const ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      title: const Text('Enter  Details'),
                      content: FadeInDown(
                        delay: const Duration(milliseconds: 600),
                        duration: const Duration(milliseconds: 600),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                GFRadio(
                                  size: 20,
                                  activeBorderColor: GFColors.SUCCESS,
                                  value: 0,
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = value;
                                    });
                                  },
                                  inactiveIcon: null,
                                  radioColor: GFColors.SUCCESS,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  "PAN, Document Type, Assessment\n year,Date of Issue and Mobile Number\n(Notice/ Letter/ Order issued for\n AssessmentYear 2011-12 and\nsubsequent years only) ",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 12.5,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                GFRadio(
                                  size: 20,
                                  value: 1,
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = value;
                                    });
                                  },
                                  inactiveIcon: null,
                                  activeBorderColor: GFColors.SUCCESS,
                                  radioColor: GFColors.SUCCESS,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  "Document Identification Number \nand Mobile Number \n(For all Assessment Years)",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                    fontSize: 12.5,
                                  ),
                                ),
                              ],
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
                      title: const Text('OTP Validation'),
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
                      title: const Text('Verify The Authenticity'),
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
    ));
  }

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
