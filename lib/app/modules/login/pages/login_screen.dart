// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/layout/responsive_layout.dart';
import 'package:flutter_cloning_responsif/app/modules/login/widgets/computer_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/login/widgets/large_tablet_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/login/widgets/phone_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/login/widgets/tablet_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          if (context.isPhone) {
            return const LoginPhoneWidgets();
          } else if (context.isTablet) {
            return const TabletLoginWidgets();
          } else if (context.isLargeTablet) {
            return const LoginLargeTabletWidgets();
          } else if (context.isComputer) {
            return const ComputerLoginWidgets();
          } else {
            return Container(
              color: Colors.black,
              height: 200,
              width: 200,
            );
          }
      },
      )
    );
  }
}



