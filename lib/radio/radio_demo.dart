import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Radio Demo"),
      ),
      body: Currency(),
    );
  }
}

class Currency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _CurrencyState();
  }
}

class _CurrencyState extends State<Currency> {
  final TextEditingController _currencyController = new TextEditingController();
  int _radioValue = 0;
  static const EURO_MUL = 0.86;
  static const POUND_MUL = 0.75;
  static const YEN_MUL = 110.63;
  double _result = 0.0;
  String _textResult = '';

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
      switch (_radioValue) {
        case 0:
          _result = _currencyCalculate(_currencyController.text, EURO_MUL);
          if (_result > -1.0) {
            _textResult =
                '${_currencyController.text} USD = ${_result.toStringAsFixed(3)} Euro';
          } else {
            _textResult =
                'Cannot convert USD to Euro\nPlease check the Amount!';
          }
          break;
        case 1:
          _result = _currencyCalculate(_currencyController.text, POUND_MUL);
          if (_result > -1.0) {
            _textResult =
                '${_currencyController.text} USD = ${_result.toStringAsFixed(3)} Pound';
          } else {
            _textResult =
                'Cannot convert USD to Pound\nPlease check the Amount!';
          }
          break;
        case 2:
          _result = _currencyCalculate(_currencyController.text, YEN_MUL);
          if (_result > -1.0) {
            _textResult =
                '${_currencyController.text} USD = ${_result.toStringAsFixed(3)} Yen';
          } else {
            _textResult = 'Cannot convert USD to Yen\nPlease check the Amount!';
          }
          break;
      }
    });
  }

  void _handleCurrencyAmountChange(String amount) {
    setState(() {
      switch (_radioValue) {
        case 0:
          _result = _currencyCalculate(amount, EURO_MUL);
          if (_result > -1.0) {
            _textResult = '$amount USD = ${_result.toStringAsFixed(3)} Euro';
          } else {
            _textResult =
                'Cannot convert USD to Euro\nPlease check the Amount!';
          }
          break;
        case 1:
          _result = _currencyCalculate(amount, POUND_MUL);
          if (_result > -1.0) {
            _textResult = '$amount USD = ${_result.toStringAsFixed(3)} Pound';
          } else {
            _textResult =
                'Cannot convert USD to Pound\nPlease check the Amount!';
          }
          break;
        case 2:
          _result = _currencyCalculate(amount, YEN_MUL);
          if (_result > -1.0) {
            _textResult = '$amount USD = ${_result.toStringAsFixed(3)} Yen';
          } else {
            _textResult = 'Cannot convert USD to Yen\nPlease check the Amount!';
          }
          break;
      }
    });
  }

  double _currencyCalculate(String amount, double multiplier) {
    double _amount = amount.isNotEmpty ? double.parse(amount) : 0.0;

    if (_amount.toString().isNotEmpty && _amount > 0) {
      return _amount * multiplier;
    } else {
      return -1.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Image.asset(
            "assets/ic_launcher.png",
            width: 100,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(4.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _currencyController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    hintText: 'in USD',
                    icon: Icon(Icons.account_balance),
                  ),
                  onChanged: _handleCurrencyAmountChange,
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text("Euro"),
                    Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text("Pound"),
                    Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text("Yen"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                Text(
                  _currencyController.text.isEmpty
                      ? 'Please enter the Amount!'
                      : _textResult,
                  style: new TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
