import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/layout/responsive_layout.dart';

class PhoneHomeWidgets extends StatelessWidget {
  const PhoneHomeWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(40),
    child: Container(
      color: Colors.blue, 
      height: context.screenHight / 2.5,
      width: context.screenWidth / 2.5,       
    ),
         );
  }
}