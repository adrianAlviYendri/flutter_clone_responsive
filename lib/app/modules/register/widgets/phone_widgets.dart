import 'package:flutter/material.dart';
import 'package:flutter_cloning_responsif/app/component/app_eleveted_button_widgets.dart';
import 'package:flutter_cloning_responsif/app/config/routers/app_routes.dart';
import 'package:go_router/go_router.dart';

class PhoneRegisterWidgets extends StatefulWidget {
  const PhoneRegisterWidgets({
    super.key,
  });

  @override
  State<PhoneRegisterWidgets> createState() => _PhoneRegisterWidgetsState();
}

class _PhoneRegisterWidgetsState extends State<PhoneRegisterWidgets> {
  bool isObsure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Text('Sign up to E-Commerce',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                   fontSize: 35,
                ),
               ),
              ),
             
             Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email'),
                ),
                Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(  
                    hintText: 'Enter your email',                                    
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    enabledBorder: OutlineInputBorder(                    
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey.shade400,),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.email,
                   color: Colors.amber.shade900,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Use an active email to creat new account!'),
                    )
                  ],
                 ),
                ],
              ),
                          
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                         const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('First name'),
                           ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your firstname',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.grey.shade400),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.grey.shade400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                         const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text('First name'),
                          ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your firstname',
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.grey.shade400),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.grey.shade400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextFormField(
                      obscureText: isObsure,                      
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsure = !isObsure;
                            });
                          },
                           icon: Icon(isObsure? Icons.visibility_off_outlined : Icons.visibility_outlined)
                           ),
                        suffixIconColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey.shade400) 
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.close,
                       color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Minimum of 8 characters.'),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.close,
                       color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Uppercase, lowecase, and one number.'),
                      ),
                    ],
                  )
                ],
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Date  of Birth'),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your date of birthday',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        suffixIcon: const Icon(Icons.date_range_outlined),
                        suffixIconColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey.shade400)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
        
              const Text.rich(
                TextSpan(
                  text: 'By continuing, I agree to App ',
                  children: [
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 9, 45, 97)
                      ),
                      children: [
                        TextSpan(
                          text: ' and\n',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Terms of use.',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromARGB(255, 9, 45, 97)
                              )
                            )
                          ]
                        )
                      ]
                    )
                  ]
                )
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: SizedBox(
                  width: double.infinity,                  
                  child: AppElevetedButtonWidgets(
                    borderRadius: BorderRadius.circular(5),
                    backgroundColor: const Color.fromARGB(255, 6, 33, 71),              
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text('Create Account',
                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                                       ),
                                      ),
                    ),
                 ),
                ),
              ),
                      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [        
                    const Text('Already have an account '),
                    InkWell(
                      onTap: () {
                        context.goNamed(AppRoutes.login.name);
                      },
                      child: const Text('Sign in',
                       style: TextStyle(
                        color: Color.fromARGB(255, 9, 45, 97),
                         decoration: TextDecoration.underline
                         ),
                        ),
                    ),
                  ],
                ),
        
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(height: 1, color: Colors.grey,),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Flexible(
                        flex: 1,
                        child: Text('or sign up with email'),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(height: 1, color: Colors.grey,),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 50),
                child: AppElevetedButtonWidgets(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.black
                  ),
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google-logo.png", height: 30,),
                        const SizedBox(width: 10),
                        const Text('Sign up with Google', style: TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}