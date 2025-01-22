import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slc_health/core/utils/app_routes.dart';
import 'package:slc_health/presentation/all_products_screen/models/data_model.dart';
import 'package:slc_health/presentation/all_products_screen/all_products_vm.dart';
import 'package:slc_health/presentation/all_products_screen/widgets/custom_card.dart';
import 'package:slc_health/theme/custom_fonts.dart';
import 'package:slc_health/widgets/custom_container.dart';
import '../../widgets/app_bar/Bottom_Nav_Item.dart';

class AllProductsScreen extends StatelessWidget {
   AllProductsScreen({super.key});
   // Importing TextTheme for  Main Dart........
  final TextTheme textTheme = TextTheme();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AllProductsVm(context),
      child: Consumer<AllProductsVm>(
        builder: (context, vm, child) {
          return SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(70),
                  child: CustomContainer(
                    childWidget: Center(
                        child: Text(
                      'All Products',
                      // style: textTheme.bodyLarge,
                      style: CustomFonts.allproductTitte,
                    )),
                  )),
              bottomNavigationBar: Consumer<BottomNavItem>(
                builder: (context, bottomNavItem, child) {
                  return BottomNavigationBar(
                    currentIndex: bottomNavItem.currentIndex,
                    onTap: (index) {
                      bottomNavItem.setIndex(index);
                    },
                    items: bottomNavItem.navItems
                        .map(
                          (item) => BottomNavigationBarItem(
                            icon: Image.asset(item.iconPath),
                            activeIcon: Image.asset(item.selectedIconPath),
                            label: item.label,
                          ),
                        )
                        .toList(),
                  );
                },
              ),
              body: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: vm.products.length,
                itemBuilder: (BuildContext context, int index) {
                  DataModel dataModel = vm.products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,
                        // arguments for passed the DataModel in Details  Screen..............
                        AppRoutes.detail_screen, arguments: dataModel,
                      );
                    },
                    child: CusttomCard(
                      name: '${dataModel.title} ' ?? '',
                      price: '${dataModel.price} AED' ?? '',
                      description: dataModel.description ??
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                              'sed do eiusmod tempor incididunt ut labore et dolore magna',
                      imageUrl: dataModel.image,
                      rating: dataModel.rating?.rate?.toDouble() ?? 4.0,
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
