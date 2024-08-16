import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveScaledBox(
          width: 450,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Account Login",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(6, 66, 186, 1)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email address",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(105, 111, 121, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(6, 66, 186,
                                1), // Border color when the field is enabled
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(6, 66, 186,
                                1), // Border color when the field is focused
                            width: 2.0,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Colors
                                .red, // Border color when there's an error
                            width: 2.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors
                                .red, // Border color when the field is focused and there's an error
                            width: 2.0,
                          ),
                        ),
                        hintText: '',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(105, 111, 121, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(6, 66, 186,
                                1), // Border color when the field is enabled
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(6, 66, 186,
                                1), // Border color when the field is focused
                            width: 2.0,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                            color: Colors
                                .red, // Border color when there's an error
                            width: 2.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors
                                .red, // Border color when the field is focused and there's an error
                            width: 2.0,
                          ),
                        ),
                        hintText: '',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 170),
                    child: SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Log In",
                            style: GoogleFonts.inter(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                color: Colors.white)),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Color.fromRGBO(
                                  6, 66, 186, 1)), // Background color
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Don´t have an account? ',
                          style: GoogleFonts.inter(
                              color: Color.fromRGBO(105, 111, 121, 1),
                              fontSize: 20.0),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign up here.',
                              style: TextStyle(
                                  color: Color.fromRGBO(6, 66, 186, 1),
                                  fontSize: 20.0),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.pushNamed('register');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
