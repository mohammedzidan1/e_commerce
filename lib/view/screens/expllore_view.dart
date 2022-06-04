import 'package:back/core/c/view_model/home_voew_model.dart';
import 'package:back/model/category_model.dart';
import 'package:back/view/constant.dart';
import 'package:back/view/screens/details.dart';
import 'package:back/view/widget/custom_text.dart';
import 'package:firestore_model/firestore_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) =>
          Scaffold(

              body: Container(
                padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _searchFormFeild(),
                      SizedBox(
                        height: 30.0,
                      ),
                      CustomText(
                        text: "Categories",
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      _listViewCatigory(),
                      SizedBox(
                        height: 30,
                      ),
                      buildRow(),
                      SizedBox(
                        height: 30,
                      ),
                      _listViewProduct(),
                    ],
                  ),
                ),
              )
          ),
    );
  }
}

Widget buildRow() {
  return Row(
    children: [
      CustomText(
        text: "Best selling",
        fontsize: 18,
      ),
      Spacer(),
      CustomText(
        text: "Sea all",
        fontsize: 15,
      ),
    ],
  );
}

Widget _searchFormFeild() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), color: Colors.grey.shade200),
    child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Widget _listViewCatigory() {
  return GetBuilder<HomeViewModel>(
    builder: (controoler) =>
        Container(
          height: 100,
          child: ListView.separated(
            itemCount: controoler.categoryModel.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey.shade100,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          controoler.categoryModel[index].image),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomText(
                    text: controoler.categoryModel[index].name,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 20,
              );
            },
          ),
        ),
  );
}

Widget _listViewProduct() {
  return GetBuilder<HomeViewModel>(

    builder: (controller) =>
        Container(
          height: 350.0,
          child: ModelStreamGetBuilder<CategoryModel>(

            builder: (context,snapshot) {
              return ListView.separated(
               // itemCount: controller.productModel.length,
                itemCount: snapshot.data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  CategoryModel categoryModel=CategoryModel(name:'' );
                  categoryModel.subCollection<>();
                  return GestureDetector(
                    onTap: (){
                      Get.to(DetailsView(
                        model: controller.productModel[index],
                      ));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.grey.shade100,
                          ),
                          child: Container(
                            width: 2,
                            child: Column(
                              children: [
                                Container(
                                  height: 250,
                                  child: Image.network(
                                    controller.productModel[index].image,
                                    fit: BoxFit.cover,),

                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomText(
                                  text: controller.productModel[index].name,
                                  alignment: Alignment.bottomLeft,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  maxline: 1,
                                  text: controller.productModel[index].description,
                                  alignment: Alignment.bottomLeft,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  text: categoryModel.name,
                                  alignment: Alignment.bottomLeft,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
              );
            }
          ),
        ),
  );
}
