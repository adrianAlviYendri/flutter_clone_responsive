import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/modules/register/widgets/phone_widgets.dart';

class LargeTabletRegisterWidgets extends StatelessWidget {
  const LargeTabletRegisterWidgets({
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
        Flexible(
          flex: 3,
          child: PhoneRegisterWidgets()
        ),
        Flexible(
          flex: 2,
          child: Container(color: Colors.white)
        ),
      ],
    );
  }
}
