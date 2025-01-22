import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slc_health/presentation/all_products_screen/models/data_model.dart';

import '../../presentation/all_products_screen/all_products_screen.dart';
import '../../presentation/details_screen/detaits_screen.dart';
import '../../presentation/login-screen/log_in_screen.dart';

class AppRoutes{
  static const String home_screen = '/home';
  static const String detail_screen = '/details';
  static const String login_screen = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case home_screen: return MaterialPageRoute(builder: (_) => AllProductsScreen());
      case login_screen: return MaterialPageRoute(builder: (_) => LogInScreen());
      case detail_screen:
        final dataModel = settings.arguments as DataModel;
        return MaterialPageRoute(builder: (_) => DetaitsScreen(dataModel: dataModel,));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }


}



// class AppRoutes {
//   static const String home = '/home';
//   static const String login = '/login';
//
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case home:
//         return MaterialPageRoute(builder: (_) => HomeView());
//       case login:
//         return MaterialPageRoute(builder: (_) => LoginView());
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(
//               child: Text('No route defined for ${settings.name}'),
//             ),
//           ),
//         );
//     }
//   }
// }
