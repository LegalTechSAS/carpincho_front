import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveScaledBox(
          width: 450,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        'assets/profile.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Juan Perez",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.inter(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(6, 66, 186, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 60),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Balance",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(6, 66, 186, 1)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 130),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "A redimir",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(6, 66, 186, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                width: 170,
                                height: 190.0, // Set the height
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
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "500",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.inter(
                                                    fontSize: 50,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromRGBO(
                                                        6, 66, 186, 1)),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: 60.0, // Set the height
                                                  child: Image.asset(
                                                    "assets/sol.png",
                                                    fit: BoxFit.cover,
                                                  )),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    "UY",
                                                    textAlign: TextAlign.left,
                                                    style: GoogleFonts.inter(
                                                        fontSize: 35,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromRGBO(
                                                            6, 66, 186, 1)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                width: 170,
                                height: 190.0, // Set the height
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          "assets/carpincho.png",
                                          scale: 2.5,
                                        ),
                                        Text(
                                          "598",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  6, 66, 186, 1)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "\$CARPI",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(6, 66, 186, 1)),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 190,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            context.pushNamed('buy');
                          },
                          child: Text("Comprar",
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
                      SizedBox(
                        width: 190,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {
                            context.pushNamed('sell');
                          },
                          child: Text("Vender",
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 390,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        context.pushNamed('claim');
                      },
                      child: Text("Redimir",
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
                  padding: EdgeInsets.only(top: 180),
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
