
import 'package:flutter/foundation.dart';

class AllSliders extends ChangeNotifier{
  double v_alue=1.0;

  void setValue(double val){
    v_alue=val;
    notifyListeners();
  }



}

class AllFavouriteItems extends ChangeNotifier{
  List<int> selecteditem=[];

  void addValue(int sel_val){
    selecteditem.add(sel_val);
    notifyListeners();
  }

  void removeValue(int sel_val){
    selecteditem.remove(sel_val);
    notifyListeners();
  }
}

