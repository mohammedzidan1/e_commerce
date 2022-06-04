
import 'package:back/core/c/view_model/controle_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlViewModel>(
        init: ControlViewModel(),
        builder: (controller) => Scaffold(
              bottomNavigationBar: buildButtomNavigationBar(),
              body: controller.screens[controller.navigatorValue],
            ));
  }
}

Widget buildButtomNavigationBar() {
  return GetBuilder<ControlViewModel>(
    init: ControlViewModel(),
    builder: (controller) => BottomNavigationBar(
      selectedItemColor: Colors.black,
      elevation: 0,
      backgroundColor: Colors.grey.shade50,
      currentIndex: controller.navigatorValue,
      onTap: (index) {
        controller.changeSelctedvalue(index);
      },
      items: [
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text("Explor"),
          ),
          label: '',
          icon: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              'assets/images/Icon_Explore.png',
              width: 20,
              fit: BoxFit.cover,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text("Cart"),
          ),
          label: '',
          icon: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              'assets/images/Icon_Cart.png',
              width: 20,
              fit: BoxFit.cover,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text("Account"),
          ),
          label: '',
          icon: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              'assets/images/Icon_User.png',
              width: 20,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}
