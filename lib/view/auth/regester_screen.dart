import 'package:back/core/c/view_model/auth_vew_model.dart';
import 'package:back/view/widget/custom_button.dart';

import 'package:back/view/widget/custom_text.dart';
import 'package:back/view/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RegisterScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomText(
                  text: "SIGN UP ",
                  color: Colors.black,
                  fontsize: 27.0,
                ),
                SizedBox(
                  height: 60.0,
                ),
                Column(
                  children: [
                    CustomTextFormField(
                        text: 'Name',
                        hint: 'Write your Name',
                        onSave: (value) {
                          controller.name = value;
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
                      height: 20.0,
                    ),
                    CustomTextFormField(
                        text: 'Password',
                        hint: 'Write your Password',
                        onSave: (value) {
                          controller.password = value;
                        },
                        validator: (value) {
                          if (value == null) {
                            print("ERROR");
                          }
                        }),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Expanded(
                        child: CustomButton(
                          text: "SIGN UP",
                          onpressd: () {
                            _formKey.currentState.save();
                            if (_formKey.currentState.validate()) {
                              controller.createAccountWithEmailAndPassword();
                            }

                          },
                        ),
                      ),
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
