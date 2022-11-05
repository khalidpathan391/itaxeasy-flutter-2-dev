import 'package:flutter/material.dart';
import 'package:gst_app/Views/Calculator/ifsc_calcii/theme.dart';

import 'components/breakDownGroup.dart';
import 'components/takeHomeDisplay.dart';

class Home extends StatefulWidget {
  const Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FocusNode myFocusNode;

  final double _exempt = 3300;
  String _takehome = '0.00';
  String _pension = '0.00';
  String _medical = '0.00';
  String _duesPayable = '0.00';
  final List<double> _dues = List(3);
  String _taxable = '0.00';
  final _bands = [800, 2100];
  final _rates = [0.25, 0.3, 0.37];

  void _changeNumber(salary) {
    salary = double.parse(salary);
    setState(() {
      double pensionDue = _calcNapsaContrib(salary);
      double medicalDue = salary * 0.01;
      _pension = pensionDue.toStringAsFixed(2);
      _medical = medicalDue.toStringAsFixed(2);

      if (_isTaxable(salary)) {
        double taxable = _getTaxableIncome(salary);
        _taxable = taxable.toStringAsFixed(2);
        double duesPayable = _calcTaxes(taxable);
        _duesPayable = duesPayable.toStringAsFixed(2);
        _takehome = (salary - (duesPayable + medicalDue + pensionDue))
            .toStringAsFixed(2);
      } else {
        _taxable = '0.00';
        _duesPayable = '0.00';
        _takehome = (salary - (pensionDue + medicalDue)).toStringAsFixed(2);
      }
    });
  }

  double _getTaxableIncome(amount) {
    return amount - _exempt;
  }

  bool _isTaxable(amount) {
    return (amount > 3300) ? true : false;
  }

  double _calcNapsaContrib(amount) {
    double contrib = amount * 0.05;
    return contrib > 1149.60 ? 1149.60 : contrib;
  }

  double _calcTaxes(tsal) {
    if (tsal <= _bands[0]) {
      _dues[0] = tsal * _rates[0];
      return _dues[0];
    }
    if (tsal <= _bands[1]) {
      _dues[0] = _bands[0] * _rates[0];
      _dues[1] = (tsal - _bands[0]) * _rates[1];
      return _dues[0] + _dues[1];
    }
    if (tsal > (_bands[0] + _bands[1])) {
      _dues[0] = _bands[0] * _rates[0];
      _dues[1] = _bands[1] * _rates[1];
      _dues[2] = (tsal - (_bands[0] + _bands[1])) * _rates[2];
      return _dues[0] + _dues[1] + _dues[2];
    }
    return _dues[0] + _dues[1] + _dues[2];
  }

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(myFocusNode);
    });
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'GST Calculator',
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
                      color: Colors.blue.shade900,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (text) {
                          _changeNumber(text);
                        },
                        decoration: const InputDecoration(
                            labelText: 'Salary',
                            prefixText: 'RS ',
                            helperText: "enter your monthly salary"),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false,
                        ),
                        // autofocus: true,
                        focusNode: myFocusNode,
                        style: const TextStyle(fontSize: 35),
                        maxLength: 8,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: TakeHomeDisplay(
                    takehome: _takehome,
                  ),
                ),
                BreakDownGroup(
                  exempt: _exempt.toStringAsFixed(2),
                  taxable: _taxable,
                  pension: _pension,
                  medical: _medical,
                  payable: _duesPayable,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
