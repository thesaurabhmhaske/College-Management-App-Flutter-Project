import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 202, 232, 255),
      child: Center(
        child: SpinKitChasingDots(
          color: Color.fromARGB(255, 16, 71, 154),
          size: 50.0,
        ),
      ),
    );
  }
}