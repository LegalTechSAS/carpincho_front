import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ConfirmedBuyPage extends StatefulWidget {
  const ConfirmedBuyPage({super.key});

  @override
  State<ConfirmedBuyPage> createState() => _ConfirmedBuyPageState();
}

class _ConfirmedBuyPageState extends State<ConfirmedBuyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveScaledBox(
        width: 450,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Comprar",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: Container(
                    width: double.infinity,
                    height: 200.0, // Set the height
                    decoration: BoxDecoration(
                      color: Colors.transparent, // Transparent background color
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded corners
                      border: Border.all(
                        color: Color.fromRGBO(6, 66, 186, 1), // Border color
                        width: 2.0, // Border width
                      ),
                    ),

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "+54",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                fontSize: 75,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(6, 66, 186, 1)),
                          ),
                          Text(
                            "Nuevos Tokens",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(6, 66, 186, 1)),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "Compra confirmada",
                    style: GoogleFonts.inter(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 390,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        context.pushNamed('buy');
                      },
                      child: Text("Seguir comprando",
                          style: GoogleFonts.inter(
                              fontSize: 25,
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            Color.fromRGBO(
                                6, 66, 186, 0.5)), // Background color
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    "Carpincho Labs | 2024",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
