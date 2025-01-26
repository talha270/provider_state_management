import 'package:flutter/foundation.dart';
class Favouriteprovider with ChangeNotifier{

  List<String> _favouites=[];
  List<String> get favourites=>_favouites;

  void add_in_list(String value){
    _favouites.contains(value)?_favouites.remove(value): _favouites.add(value);
    notifyListeners();
  }
}