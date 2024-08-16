import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WaitingBuyPage extends StatefulWidget {
  const WaitingBuyPage({super.key});

  @override
  State<WaitingBuyPage> createState() => _WaitingBuyPageState();
}

class _WaitingBuyPageState extends State<WaitingBuyPage> {
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
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: double.infinity,
                    height: 350.0, // Set the height
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
                          SvgPicture.asset("assets/waiting.svg"),
                          Text(
                            "Cargar",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(6, 66, 186, 1)),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Los tokens serán liberados una vez comprobada la transferencia",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: SizedBox(
                    width: 390,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        context.pushNamed('confirmedBuy');
                      },
                      child: Text("Chequear",
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
                  padding: EdgeInsets.only(top: 80),
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
