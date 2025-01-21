import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slc_health/presentation/login-screen/provider/loin_provider.dart';
import 'package:slc_health/theme/custom_color.dart';
import 'package:slc_health/theme/custom_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/app_routes.dart';
import '../../widgets/custom_container_login.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_field.dart';
import 'login_vm.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final CustomColor customColor = CustomColor();

  // final LoinViewModel loinViewModel = LoinViewModel();

// final CustomFonts customFonts = CustomFonts();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => LogInVm(),
      child: Consumer<LogInVm>(
        builder: (context, vm, child) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: customColor.cmnWhitenColor,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LoginContiner(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: Text(
                                    "STC ",
                                    style: CustomFonts.appTittle,
                                  )),
                              Center(
                                  child: Text(
                                    "HEALTH ",
                                    style: CustomFonts.appTittle,
                                  )),
                              SizedBox(
                                height: 14.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Log In ",
                                  style: CustomFonts.login,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        CusttomTextField(
                          sufixicon: Icon(Icons.check),
                          controller: vm.userNameController,
                          textLabel: 'Email', style: CustomFonts.email,
                          // sufixicon: Image.asset("assets/images/img.png"),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Consumer<LogInVm>(
                            builder: (context, vm, child) {
                              return CusttomTextField(
                                textLabel: 'Password',
                                controller: vm.passwordController,
                                style: CustomFonts.email,
                                isObscure: vm.isObscure,
                                sufixicon: InkWell(
                                    onTap: () => vm.visibalty(),
                                    child: Icon(vm.isObscure ? Icons.visibility_off : Icons.remove_red_eye)),
                              );
                            }
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomElevatedButton(
                          text: 'Continue',
                          onTap: () {
                            vm.loginFunction( context);
                          },
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.home_screen);
                          },
                          child: Text(
                            "NEED HELP?",
                            // style: CustomFonts.email,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
