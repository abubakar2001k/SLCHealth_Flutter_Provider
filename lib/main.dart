import 'package:flutter/material.dart';// Ensure this package is imported for MultiProvider
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slc_health/core/utils/app_routes.dart';
import 'package:slc_health/data/data_provider.dart';
import 'package:slc_health/presentation/details_screen/provider/details_provider.dart';
import 'package:slc_health/presentation/login-screen/log_in_screen.dart';
import 'package:provider/provider.dart';
import 'package:slc_health/presentation/login-screen/provider/loin_provider.dart';
import 'package:slc_health/widgets/app_bar/Bottom_Nav_Item.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        // Uncomment and initialize the providers correctly when needed
        ChangeNotifierProvider(create: (_) => BottomNavItem()),
        ChangeNotifierProvider(create: (_) => DataProvider()),
        // ChangeNotifierProvider(create: (_) => DetailsScreenProvider()),
        // ChangeNotifierProvider(create: (_) => LogInProvider()),
        // ChangeNotifierProvider(create: (_) => SignUpController()),
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
      ),
      initialRoute: AppRoutes.login_screen, // Define initial route
      onGenerateRoute: AppRoutes.generateRoute, // Use custom route generator
    );
  }
}
