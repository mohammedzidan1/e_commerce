import 'package:back/Module/app/bloc/app.bloc.dart';
import 'package:back/Module/home/home.page.dart';
import 'package:back/helper/app.routs.dart';
import 'package:back/view/screens/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module{
  //depincy ingiction
  @override
  List<Bind> get binds => [
    Bind((i) => AppBloc()),
  ];
  //manage route && data
  @override
  List<ModularRoute> get routes => [
    ChildRoute(AppRouts.home, child: (_, args) => HomePage()),
  ];
}