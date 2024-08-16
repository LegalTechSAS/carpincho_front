import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/svg.dart';

class ClaimPage extends StatefulWidget {
  const ClaimPage({super.key});

  @override
  State<ClaimPage> createState() => _ClaimPageState();
}

class _ClaimPageState extends State<ClaimPage> {
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
                    "Redimir",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "TOKENS DISPONIBLES",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(6, 66, 186, 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                      width: double.infinity,
                      height: 330.0, // Set the height
                      decoration: BoxDecoration(
                        color:
                            Colors.transparent, // Transparent background color
                        borderRadius:
                            BorderRadius.circular(30.0), // Rounded corners
                        border: Border.all(
                          color: Color.fromRGBO(6, 66, 186, 1), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Renta Diaria",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(6, 66, 186, 1)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: 40.0, // Set the height
                                    child: Image.asset(
                                      "assets/carpincho.png",
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "4 \$CARPI",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(6, 66, 186, 1)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 0),
                                  child: SizedBox(
                                    width: 160,
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Claimear",
                                          style: GoogleFonts.inter(
                                              fontSize: 18,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white)),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all<Color>(
                                                Color.fromRGBO(6, 66, 186,
                                                    0.5)), // Background color
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: 170,
                                  height: 200.0, // Set the height
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .transparent, // Transparent background color
                                    borderRadius: BorderRadius.circular(
                                        30.0), // Rounded corners
                                    border: Border.all(
                                      color: Color.fromRGBO(
                                          6, 66, 186, 1), // Border color
                                      width: 2.0, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Mensual",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(6, 66, 186, 1)),
                                      ),
                                      Text(
                                        "180",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                            fontSize: 75,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(6, 66, 186, 1)),
                                      ),
                                    ],
                                  )),
                              Container(
                                  width: 170,
                                  height: 200.0, // Set the height
                                  decoration: BoxDecoration(
                                    color: Colors
                                        .transparent, // Transparent background color
                                    borderRadius: BorderRadius.circular(
                                        30.0), // Rounded corners
                                    border: Border.all(
                                      color: Color.fromRGBO(
                                          6, 66, 186, 1), // Border color
                                      width: 2.0, // Border width
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Acumulados",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    6, 66, 186, 1)),
                                          ),
                                          Text(
                                            "545",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.inter(
                                                fontSize: 75,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromRGBO(
                                                    6, 66, 186, 1)),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                            ],
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Disponible solo para usuarios validados",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 160),
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
