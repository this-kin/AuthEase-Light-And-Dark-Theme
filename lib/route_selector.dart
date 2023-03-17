import 'package:flutter/material.dart';
import 'package:qoute_app/modules/login.dart';

class RouteSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final time = TimeOfDay.now().format(context);
    print("time is $time");
    return Container(
      child: Login(),
    );
  }
}
