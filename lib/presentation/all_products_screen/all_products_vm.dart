import 'package:flutter/cupertino.dart';
import 'package:slc_health/presentation/all_products_screen/models/data_model.dart';
import 'package:slc_health/network/api_services/custtom_api_services.dart';

class AllProductsVm extends ChangeNotifier{

  late BuildContext context;
  AllProductsVm(this.context){

    fetchProducts();
  }

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  setIsLoading(bool newVal){
    _isLoading = newVal;
    notifyListeners();
  }


  List<DataModel> products = [];

  Future<void> fetchProducts() async {
    CustomApiServices apiServices =
    CustomApiServices(baseUrl: "https://fakestoreapi.com/");
    const String endPoint = 'products';



    try {
      final response = await apiServices.get(endPoint);
      if (response is List) {
        products = response
            .map((item) => DataModel.fromJson(item as Map<String, dynamic>))
            .toList();
        notifyListeners();
      } else {
        throw Exception("Invalid response format: Expected List, got ${response.runtimeType}");
      }
    } catch (e) {
      debugPrint('Error fetching products: $e');
    }
  }

}