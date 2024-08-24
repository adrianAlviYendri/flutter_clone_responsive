import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/modules/register/widgets/phone_widgets.dart';

class ComputerRegisterWidgets extends StatelessWidget {
  const ComputerRegisterWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(color: Colors.grey.shade300)
        ),
        const Flexible(
          flex: 2, 
          child: PhoneRegisterWidgets()
        ),
        Flexible(
          flex: 1,
          child: Container(color: Colors.white)
        )
      ],
    );
  }
}