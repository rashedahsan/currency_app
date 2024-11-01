import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _selectcurrency = "USD";
  Widget _dropdownitem(Country country) => Container(
        child: Row(
          children: [
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 6,
            ),
            Text('${country.currencyName}')
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Base currency",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(7),
            margin: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: CountryPickerDropdown(
              initialValue: "us",
              itemBuilder: _dropdownitem,
              onValuePicked: (Country? Country) {
                setState(() {
                  _selectcurrency = Country?.currencyCode ?? "";
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
