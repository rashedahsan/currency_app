import 'package:flutter/material.dart';
import 'package:flutter_currency_app/ui/exchange.dart';
import 'package:flutter_currency_app/ui/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedindex = 0;
  Widget getview() {
    if (_selectedindex == 0) {
      return HomePage();
    }
    return Exchange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Flutter curency Exchange"),
      ),
      body: getview(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.currency_exchange,
                ),
                label: "Exchange")
          ]),
    );
  }
}
