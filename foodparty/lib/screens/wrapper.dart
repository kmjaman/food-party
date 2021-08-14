import 'package:flutter/material.dart';
import 'package:foodparty/screens/authenticate/authenticate.dart';
import 'package:foodparty/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}