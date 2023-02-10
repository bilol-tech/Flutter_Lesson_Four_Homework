import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier{
  bool isVisibility = true;

  onchange(){
    isVisibility = !isVisibility;
    notifyListeners();
  }
}