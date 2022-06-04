import 'package:back/core/c/service/home_service.dart';
import 'package:back/model/category_model.dart';
import 'package:back/model/productis.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  HomeViewModel() {
    getCategory();
    getBestSellingProducts();
  }

  List<CategoryModel> get categoryModel => _categoryModel;
  List<CategoryModel> _categoryModel = [];

  List<ProductModel> get productModel => _productModel;
  List<ProductModel> _productModel = [];

//
  ValueNotifier<bool> get loading => _loading;
  ValueNotifier<bool> _loading = ValueNotifier(false);


  getCategory() async {
    print("kkkk");
    _loading.value = true;
    HomeService().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        print(value[i].data());
        _categoryModel.add(CategoryModel.fromJson(value[i].data()));
        _loading.value = false;
      }
      update();
    });
  }

  getBestSellingProducts() async {
    print("llllllllllllllllllllllllllllllll");
    _loading.value = true;
    HomeService().getBestSelling().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(ProductModel.fromJson(value[i].data()));
        print(_productModel[i].name);
        _loading.value = false;
      }
      update();

    });

  }
}
