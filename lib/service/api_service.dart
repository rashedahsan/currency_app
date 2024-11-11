import 'dart:convert';

import 'package:flutter_currency_app/constants/constants.dart';
import 'package:flutter_currency_app/model/currencymodel.dart';

class ApiService {
  get http => null;

  Future<List<CurrencyModel>> getLatest(String baseCurrrency) async {
    List<CurrencyModel> currencyModelList = [];
    String url =
        '${base_url}latest?apikey=$apikey&base_currency=$baseCurrrency';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        Map<String, dynamic> body = json['data'];

        body.forEach((key, value) {
          CurrencyModel currencyModel = CurrencyModel.fromJson(value);
          currencyModelList.add(currencyModel);
        });
        return currencyModelList;
      } else {
        return [];
      }
    } catch (e) {
      throw e.toString();
    }
  }

  Future<List<CurrencyModel>> getExchange(
      String baseCurrrency, String targetCurrency) async {
    List<CurrencyModel> currencyModelList = [];

    String url =
        'http://api.currencyapi.com/v3/latest?apikey=cur_live_2DVfCQapCNoQ53T2eyZlVqtVuEHetjK6FADPL9hW';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        Map<String, dynamic> body = json['data'];

        body.forEach((key, value) {
          CurrencyModel currencyModel = CurrencyModel.fromJson(value);
          currencyModelList.add(currencyModel);
        });
        return currencyModelList;
      } else {
        return [];
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
