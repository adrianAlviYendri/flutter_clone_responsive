// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/config/routers/app_router.dart';
import 'package:flutter_cloning_responsif/app/config/routers/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: AppRouter.router(),
    );
  }
}