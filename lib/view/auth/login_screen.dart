import 'package:back/core/c/view_model/auth_vew_model.dart';
import 'package:back/view/auth/regester_screen.dart';
import 'package:back/view/widget/custom_button.dart';
import 'package:back/view/widget/custom_social_button.dart';
import 'package:back/view/widget/custom_text.dart';
import 'package:back/view/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';
class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Welcome",
                      color: Colors.black,
                      fontsize: 30.0,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(RegisterScreen());
                      },
                      child: CustomText(
                        text: "Sign Up",
                        color: primaryColor,
                        fontsize: 18.0,
                      ),
                    ),
                    //     Text("Sign up",style: TextStyle(color:primaryColor,fontSize: 18.0),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: "Sign in to continue",
                  color: Colors.grey,
                  fontsize: 14.0,
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    CustomTextFormField(
                        text: 'Email',
                        hint: 'Write your Email',
                        onSave: (value) {
                          controller.email = value;
                        },
                        validator: (value) {
                          if (value == null) {
                            print("ERROR");
                          }
                        }),
                    SizedBox(
                      height: 30.0,
                    ),
                    CustomTextFormField(
                        text: 'Password',
                        hint: 'Write your Password',
                        onSave:(value){
                          controller.password=value;
                        } ,
                        validator: (value) {
                          if (value == null) {
                            print("ERROR");
                          }}
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomText(
                      text: "forget password",
                      alignment: Alignment.topRight,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: CustomButton(
                        text: "SIGN IN",
                        onpressd: () {
                          _formKey.currentState.save();
                          if (_formKey.currentState.validate()) {
                            controller.signWithEmailAndPassword();
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomText(
                      text: "_OR_",
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomButtonSocial(
                      onPress: () {
                        controller.googleSignInMethod();
                      },
                      text: 'Sign In with Google',
                      imageName: 'assets/images/google.png',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomButtonSocial(
                      onPress: () {},
                      text: 'Sign In with facebook',
                      imageName: 'assets/images/facebook.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
