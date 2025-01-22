import 'package:flutter/material.dart'; // Ensure this package is imported for MultiProvider
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slc_health/core/utils/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:slc_health/theme/custom_color.dart';
import 'package:slc_health/widgets/app_bar/Bottom_Nav_Item.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavItem()),
      ],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Add specific theme customizations if needed
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              titleLarge: TextStyle(
                fontSize: 30,
                // fontFamily: 'SFProDisplay',
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
              titleMedium: TextStyle(
                fontFamily: 'SFProDisplay',
                fontWeight: FontWeight.w700,
                height: 43.57 / 36.0,
                fontSize: 50,
                color: CustomColor.btnColor,
                letterSpacing: -0.3,
                decoration: TextDecoration.none,
              ))),
      initialRoute: AppRoutes.login_screen,
      // Define initial route
      onGenerateRoute: AppRoutes.generateRoute, // Use custom route generator
    );
  }
}
