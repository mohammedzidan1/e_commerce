import 'package:back/view/screens/cart_view.dart';
import 'package:back/view/screens/expllore_view.dart';
import 'package:back/view/screens/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _navigatorValue = 0;
  List<Widget> _screens = [ExploreView(), CartView(), ProfileView()];

  get screens => _screens;

  get navigatorValue => _navigatorValue;

  void changeSelctedvalue(int selctedValue) {
    _navigatorValue = selctedValue;
    update();
  }
}
