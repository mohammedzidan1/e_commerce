// import 'package:back/view/constant.dart';
// import 'package:back/view/widget/custom_button.dart';
// import 'package:back/view/widget/custom_text.dart';
// import 'package:back/core.helper.view_model/auth_vew_model.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  GetBuilder<AuthVewModel>(
//       init:AuthVewModel() ,
//      builder:(value)=> Scaffold(
//        appBar: AppBar(),
//
//        body: Column(
//           children: [
//             CustomButton(text: "kjfk", onpressd: (){
//               value.increes();
//             }, backGroundColor: primaryColor),
//             CustomText(text: "${value.x}",),
//           ],
//         ),
//      ),
//     );
//   }
// }
