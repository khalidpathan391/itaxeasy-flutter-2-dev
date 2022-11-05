import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class VerifyReturn extends StatefulWidget {
  @override
  _VerifyReturnState createState() => _VerifyReturnState();
}

class _VerifyReturnState extends State<VerifyReturn> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  String dropDownValue;
  List<String> cityList = [
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022'
  ];

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
                        child: Text('e-Verify Return',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/images/accent.png',
                        width: 99,
                        color: Colors.blue.shade900,
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
                        title: const Text('Enter Return Details'),
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
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'PAN Number',
                                    //hintStyle: heading6.copyWith(color: textGrey),
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
                                    "Assessment Year",
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
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: 'Assessment Year',
                                    // hintStyle: heading6.copyWith(color: textGrey),
                                  ),
                                  value: dropDownValue,
                                  onChanged: (String Value) {
                                    setState(() {
                                      dropDownValue = Value;
                                    });
                                  },
                                  items: cityList
                                      .map((cityTitle) => DropdownMenuItem(
                                          value: cityTitle,
                                          child: Text(cityTitle)))
                                      .toList(),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 10, top: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Acknowledgement Number",
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
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'Acknowledgement Number',
                                    // hintStyle: heading6.copyWith(color: textGrey),
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
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'Mobile Number',
                                    // hintStyle: heading6.copyWith(color: textGrey),
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
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Home Address'),
                            ),
                            TextFormField(
                              decoration:
                                  const InputDecoration(labelText: 'Postcode'),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title:
                            const Text('Select Method For Return Verification'),
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
                      Step(
                        title: const Text('Return Successfully Verified'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Mobile Number'),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 3
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
    _currentStep < 3 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
