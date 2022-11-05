import 'package:flutter/material.dart';

import 'Calculator/ifsc_calcii/theme.dart';

class AccountMisuse extends StatefulWidget {
  const AccountMisuse({Key key}) : super(key: key);

  @override
  _AccountMisuseState createState() => _AccountMisuseState();
}

class _AccountMisuseState extends State<AccountMisuse> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
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
                        'Account Misuse',
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
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, bottom: 10, right: 5, top: 10),
                    child: Column(
                      children: const [
                        Text(
                          "If you think your e-Filing account may have been compromised or accessed in an unauthorized manner, then you may be a victim of cybercrime. Please report the incident to the concerned police or cyber-cell authorities as a first step. You may file an online criminal complaint/FIR by visiting https://cybercrime.gov.in/, an initiative of Government of India to facilitate victims/complainants to report cybercrime complaints online",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "When filing a cybercrime complaint, please ensure the following relevant information is captured and reflected in the FIR/criminal complaint in relation to the account misuse:",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "a: Complete details of the complainant, such as PAN, Aadhaar Number etc. and brief of the alleged incident",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "b: The date and approximate time of the suspected account misuse (if you are uncertain about the date and time of the suspected account misuse, then please mention the last date and approximate time you logged in and accessed your e-filing account, and as much as possible describe any activity you undertook during your last log-in. This will help in differentiating between unauthorized activities from legitimate activities);",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "c: The date and approximate time when the account misuse came to your attention, and how it came to your attention;",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "d: Any information, facts or details relevant to the suspected account misuse.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Please note that any complaint of account misuse made before the Income Tax Department must be accompanied with a copy of the FIR/criminal complaint and mention any relevant details in relation to the incident. We recommend that you submit the account misuse complaint (along with FIR/criminal complaint copies) via email, through the primary email ID registered for your e-filing account.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 17.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
