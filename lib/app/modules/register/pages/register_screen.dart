import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/layout/responsive_layout.dart';
import 'package:flutter_cloning_responsif/app/modules/register/widgets/computer_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/register/widgets/large_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/register/widgets/phone_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/register/widgets/tablet_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (context.isPhone) {
          return const PhoneRegisterWidgets();
        } else if (context.isTablet) {
          return const TabletRegisterWidgets();
        } else if (context.isLargeTablet) {
          return const LargeTabletRegisterWidgets();
        } else if (context.isComputer) {
          return const ComputerRegisterWidgets();
        } else {
          return const Text('Null');
        }
      }
      ),
    );
  }
}





