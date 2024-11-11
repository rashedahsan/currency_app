import 'package:flutter/material.dart';
import 'package:flutter_currency_app/model/currencymodel.dart';

class AllCurrencyListItem extends StatelessWidget {
  final CurrencyModel currencyModel;

  const AllCurrencyListItem({Key? key, required this.currencyModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.blue.withAlpha(88),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            currencyModel.code.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          Text(
            currencyModel.value?.toStringAsFixed(2).toString() ?? "",
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
