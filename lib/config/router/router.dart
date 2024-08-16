import 'package:carpincho_front/ui/pages/buy/buy.dart';
import 'package:carpincho_front/ui/pages/buy/confirmed_buy.dart';
import 'package:carpincho_front/ui/pages/claim/claim.dart';
import 'package:carpincho_front/ui/pages/home/home.dart';
import 'package:carpincho_front/ui/pages/login/login.dart';
import 'package:carpincho_front/ui/pages/register/register.dart';
import 'package:carpincho_front/ui/pages/sell/sell.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: "/",
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: "login",
      path: '/',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      name: "register",
      path: '/register',
      builder: (context, state) => RegisterPage(),
    ),
    GoRoute(
      name: "home",
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      name: "buy",
      path: '/buy',
      builder: (context, state) => BuyPage(),
    ),
    GoRoute(
      name: "confirmedBuy",
      path: '/confirmedBuy',
      builder: (context, state) => ConfirmedBuyPage(),
    ),
    GoRoute(
      name: "sell",
      path: '/sell',
      builder: (context, state) => SellPage(),
    ),
    GoRoute(
      name: "claim",
      path: '/claim',
      builder: (context, state) => ClaimPage(),
    ),
  ],
);
