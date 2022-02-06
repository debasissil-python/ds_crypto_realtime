import 'package:flutter/material.dart';
import 'package:ds_crypto_realtime/crypto_details.dart';

//String countryName = 'USA';
String currencyName = 'USD';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
            color: Colors.indigo, style: BorderStyle.solid, width: 0.7),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: const Icon(Icons.arrow_drop_down_circle_outlined),
          iconEnabledColor: Colors.indigo,
          borderRadius: BorderRadius.circular(15.0),
          style: const TextStyle(
            color: Colors.indigo,
            fontSize: 20,
          ),
          focusColor: Colors.blue,
          value: currencyName,
          items: currencyList.map((String currencyName) {
            // ignore: prefer_const_constructors
            return DropdownMenuItem(
                child: Text(currencyName), value: currencyName);
          }).toList(),
          onChanged: (value) {
            setState(() {
              currencyName = value!;
            });
          },
        ),
      ),
    );
  }
}
