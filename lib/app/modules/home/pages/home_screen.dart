import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/layout/responsive_layout.dart';
import 'package:flutter_cloning_responsif/app/modules/home/widgets/computer_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/home/widgets/large_tablet_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/home/widgets/phone_widgets.dart';
import 'package:flutter_cloning_responsif/app/modules/home/widgets/tablet_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Builder(
        builder: (context) {
          if (context.isPhone) {
            return const Text('PHONE');
          } else if (context.isTablet) {
            return const Text('TABLET');
          } else if (context.isLargeTablet) {
            return const Text('LARGE TABLET');
          } else if (context.isComputer) {
            return const Text('COMPUTER');
          } else {
            return const Text('COMPUTER');
          }
        },
      )),
      body: Builder(
        builder: (context) {
          if (context.isPhone) {
            return const PhoneHomeWidgets();
          } else if (context.isTablet) {
            return const TabletHomeWidgets();
          } else if (context.isLargeTablet) {
            return const LargeTableHometWidgets();
          } else if (context.isComputer) {
            return const ComputerHomeWidgets();
          } else {
            return const Text('Null');
          }
        },
      ),
    );
  }
}
