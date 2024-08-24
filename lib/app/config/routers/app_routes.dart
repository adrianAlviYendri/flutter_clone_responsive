// ignore_for_file: unused_import, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

enum AppRoutes {
  login,
  register,  
  home,
}

extension AppRoutesExtention on AppRoutes {

  String get Path {
    switch (this) {
      case AppRoutes.login:
        return '/login';
      case AppRoutes.register:
        return '/register';
      case AppRoutes.home:
        return '/home';         
    }
  }
}