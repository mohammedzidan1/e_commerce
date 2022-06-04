import 'package:firestore_model/firestore_model.dart';

class CategoryModel extends FirestoreModel<CategoryModel> {
  String name, image;

  CategoryModel({this.name, this.image});

  CategoryModel.fromMap(Map<dynamic, dynamic> map) {
    // if (map == null) {
    //   return;
    // }
    name = map['name'];
    image = map['image'];
  }

  // toJson() {
  //   return {
  //     'name': name,
  //     'image': image,
  //   };
  // }

  @override
  ResponseBuilder<CategoryModel> get responseBuilder =>
      (map)=>CategoryModel.fromMap(map);

  @override
  Map<String, dynamic> get toMap => {
  'name': name,
  'image': image,
  };
  @override
  String get collectionName => 'categorys';//لو عايز اديها اسم اما لو مش عايز مش هحط السطر ده وهو هيسمي الكوليكشن بنفس اسم الكلاس
}
