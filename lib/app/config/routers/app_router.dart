// ignore_for_file: unused_import



import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/config/routers/app_routes.dart';
import 'package:flutter_cloning_responsif/app/layout/responsive_layout.dart';
import 'package:flutter_cloning_responsif/app/modules/home/pages/home_screen.dart';
import 'package:flutter_cloning_responsif/app/modules/login/pages/login_screen.dart';
import 'package:flutter_cloning_responsif/app/modules/register/pages/register_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static router() {
    return GoRouter(
      initialLocation: AppRoutes.register.Path,
      routes: [
        GoRoute(
          name: AppRoutes.login.name,
          path: AppRoutes.login.Path,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          name: AppRoutes.register.name,
          path: AppRoutes.register.Path,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          name: AppRoutes.home.name,
          path: AppRoutes.home.Path,
          builder: (context, state) =>
           const ResponsiveLayout(
            phone: HomeScreen(),
            tablet: HomeScreen(), 
            largeTablet: HomeScreen(), 
            computer: HomeScreen(),
            ),
        ),
      ]
    );
  }
}