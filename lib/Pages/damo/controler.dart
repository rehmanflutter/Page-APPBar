import 'package:flutter/cupertino.dart';

class VehicleDetailsController extends ChangeNotifier {
  bool _down = false;
  bool get down => _down;

  int _downIndex = -1; // Default to -1, indicating none is selected
  int get downIndex => _downIndex;

  void downCheck(int index) {
    if (_down && _downIndex == index) {
      // If already selected, hide details
      _down = false;
      _downIndex = -1;
    } else {
      // Otherwise, show details for the selected index
      _down = true;
      _downIndex = index;
    }

    notifyListeners();
  }
}
