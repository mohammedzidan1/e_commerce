//
// import 'package:back/view/auth/login_screen.dart';
// import 'package:back/core.helper.view_model/auth_vew_model.dart';
// import 'package:back/core.helper.view_model/controle_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ControlView extends GetWidget<AuthViewModel> {
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return (Get.find<AuthViewModel>().user == null)
//           ? LoginScreen()
//           : GetBuilder<HomeViewModel>(
//         builder: (controller) => Scaffold(
//           body: controller.currentScreen,
//           bottomNavigationBar: bottomNavigationBar(),
//         ),
//       );
//     });
//   }
//
//   Widget bottomNavigationBar() {
//     return GetBuilder<HomeViewModel>(
//       init: HomeViewModel(),
//       builder: (controller) => BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//               activeIcon: Padding(
//                 padding: const EdgeInsets.only(top: 25.0),
//                 child: Text("Explore"),
//               ),
//               label: '',
//               icon: Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Image.asset(
//                   'assets/images/Icon_Explore.png',
//                   fit: BoxFit.contain,
//                   width: 20,
//                 ),
//               )),
//           BottomNavigationBarItem(
//               activeIcon: Padding(
//                 padding: const EdgeInsets.only(top: 25.0),
//                 child: Text("Cart"),
//               ),
//               label: '',
//               icon: Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Image.asset(
//                   'assets/images/Icon_Cart.png',
//                   fit: BoxFit.contain,
//                   width: 20,
//                 ),
//               )),
//           BottomNavigationBarItem(
//               activeIcon: Padding(
//                 padding: const EdgeInsets.only(top: 25.0),
//                 child: Text("Account"),
//               ),
//               label: '',
//               icon: Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Image.asset(
//                   'assets/images/Icon_User.png',
//                   fit: BoxFit.contain,
//                   width: 20,
//                 ),
//               )),
//         ],
//         currentIndex: controller.navigatorValue,
//         onTap: (index) {
//           controller.changeSelctedvalue(index);
//         },
//         elevation: 0,
//         selectedItemColor: Colors.black,
//         backgroundColor: Colors.grey.shade50,
//       ),
//     );
//   }
// }