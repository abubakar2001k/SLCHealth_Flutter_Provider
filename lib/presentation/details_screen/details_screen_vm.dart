import 'package:flutter/foundation.dart';

class  DetailsScreenVm extends ChangeNotifier {

  bool _isExpended = false;
  bool get isExpended => _isExpended;

  Future<void> toggleIsExpandContainer() async {
    _isExpended = ! _isExpended;
    notifyListeners();
  }
}