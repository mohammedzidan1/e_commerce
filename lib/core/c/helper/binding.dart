
import 'package:back/core/c/view_model/auth_vew_model.dart';
import 'package:back/core/c/view_model/controle_view_model.dart';
import 'package:back/core/c/view_model/home_voew_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
    Get.lazyPut(() => HomeViewModel());
  }
}
