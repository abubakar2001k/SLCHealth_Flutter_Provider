import 'package:flutter/foundation.dart';

import '../network/api_services/custtom_api_services.dart';
import '../presentation/all_products_screen/models/data_model.dart';

class DataProvider extends ChangeNotifier {
  // List<DataModel> products = [];
  //
  // Future<void> fetchProducts() async {
  //   CustomApiServices apiServices =
  //   CustomApiServices(baseUrl: "https://fakestoreapi.com/");
  //   const String endPoint = 'products';
  //
  //
  //
  //   try {
  //     final response = await apiServices.get(endPoint);
  //     if (response is List) {
  //       products = response
  //           .map((item) => DataModel.formJson(item as Map<String, dynamic>))
  //           .toList();
  //       notifyListeners();
  //     } else {
  //       throw Exception("Invalid response format: Expected List, got ${response.runtimeType}");
  //     }
  //   } catch (e) {
  //     debugPrint('Error fetching products: $e');
  //   }
  // }
}


// import 'package:flutter/foundation.dart';
// import 'package:slc_health/data/data_model/data_model.dart';
// import 'package:slc_health/network/api_services/custtom_api_services.dart';
//
// class DataProvider extends ChangeNotifier {
//   List<DataModel> products = [];
//
//   Future<void> fetchProducts() async {
//     CustomApiServices apiServices = CustomApiServices(baseUrl: "https://fakestoreapi.com/");
//     const String endPoint = 'products';
//
//     try {
//       final response = await apiServices.get(endPoint);
//       if (response is List) {
//         products = response.map((item) => DataModel.formJson(item)).toList();
//         notifyListeners(); // Notify listeners to rebuild UI
//       } else {
//         throw Exception("Invalid response format");
//       }
//     } catch (e) {
//       debugPrint('Error fetching products: $e');
//     }
//   }
// }
//
