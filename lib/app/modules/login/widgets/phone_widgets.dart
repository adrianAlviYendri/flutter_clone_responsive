// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/component/app_eleveted_button_widgets.dart';
import 'package:flutter_cloning_responsif/app/config/routers/app_routes.dart';
import 'package:go_router/go_router.dart';

class LoginPhoneWidgets extends StatefulWidget {
  const LoginPhoneWidgets({
    super.key,
  });

  @override
  State<LoginPhoneWidgets> createState() => _LoginPhoneWidgetsState();
}

class _LoginPhoneWidgetsState extends State<LoginPhoneWidgets> {
  bool isObsure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Sign In to E-Commerce',
                 style: TextStyle(
                  color: Colors.black,
                   fontWeight: FontWeight.bold,
                    fontSize: 30,
                    ),
                   ),
              ),
            ),

            SizedBox(
              height: 40,
              child: AppElevetedButtonWidgets(              
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.black),              
                borderRadius: BorderRadius.circular(20),
                onPressed: () {},
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/images/google-logo.png'),
                  ),
                  const SizedBox(width: 20,),
                  const Text('Sign in with Google',
                   style: TextStyle(
                    color: Colors.black,
                   ),
                  ),
                ],
               ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [                  
                  Flexible(
                    flex: 1,
                    child: Container(                    
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('or sign in with email'),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(                    
                      height: 2,
                      color: Colors.grey.shade400,
                    ),
                  ),                  
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Email')
                ),
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                    ),
                  ),     
                hintText: 'Enter your email',           
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400
                    ),
                   )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Password')
                ),
            ),
            TextFormField(
              obscureText: isObsure,
              decoration: InputDecoration(                
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                    ),
                  ),     
                hintText: 'Enter your password',           
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400
                    ),
                   ),
                suffixIcon: IconButton(                  
                  onPressed: () {
                    setState(() {
                      isObsure = !isObsure;
                    });
                  },
                   icon: Icon(isObsure? Icons.visibility_off_outlined : Icons.visibility,
                   ),
                  ),
                suffixIconColor: Colors.grey.shade400
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot password ?',
                 style: TextStyle(
                  color: Colors.grey.shade800,
                 ),
                ),
              ),
            ),

              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: AppElevetedButtonWidgets(  
                    backgroundColor: Color.fromARGB(255, 5, 29, 65),            
                    borderRadius: BorderRadius.circular(5),  
                    onPressed: () {},  
                    child: Text('Sign In',
                     style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                     ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ",
                   style: TextStyle(
                    color: Colors.grey.shade800,
                   ),
                  ),
                  InkWell(
                    onTap: () {
                      context.goNamed(AppRoutes.register.name);
                    },
                    child: Text('Sign up',
                      style: TextStyle(
                        color:Color.fromARGB(255, 9, 45, 97),
                        decoration: TextDecoration.underline,
                        ),
                       ),
                  ),
                ],
              )

          ],
        ),
      ),
    );
  }
}