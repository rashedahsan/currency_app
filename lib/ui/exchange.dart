import 'package:flutter/material.dart';

class Exchange extends StatefulWidget {
  const Exchange({super.key});

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "data",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
