import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/modules/login/widgets/phone_widgets.dart';

class ComputerLoginWidgets extends StatelessWidget {
  const ComputerLoginWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.grey.shade300,
           ),
          ),
          const Flexible(
            flex: 1,
            child: LoginPhoneWidgets()
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.white
           ),
          ),
        ],
      ),
    );
  }
}
