import 'package:flutter/material.dart';
import 'package:navegacao_por_telas/views/views.dart';

class AppRoutes {

  static const String appRouteHome = "/home";
  static const String appRouteScreen1 = "/screen1";
  static const String appRouteScreen2 = "/screen2";
  static const String appRouteAbout = "/about";

  Route getRoutes(RouteSettings routeSettings)  {

    switch(routeSettings.name) {
      case appRouteHome: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => Home('Navegação com rotas')
        );
      }
      case appRouteScreen1: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => Screen1(),
        );
      }
      case appRouteScreen2: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => Screen2(),
        );
      }
      case appRouteAbout: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => About(),
        );


      }

      default: {
        return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => Home('Navegação com rotas')
        );
      }
      
    }
  }
}