
import 'package:flutter/foundation.dart';

class Counterprovider with ChangeNotifier{
  int _count=0;
  // int get count{return _count;}
  int get count=> _count;

  setcount(){
    _count++;
    notifyListeners();
  }
}

