import 'package:back/Module/app/bloc/app.bloc.dart';
import 'package:back/Module/app/bloc/app.state.dart';
import 'package:back/helper/app.routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
class HomePage extends StatelessWidget {
  AppBloc appBloc=Modular.get<AppBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppBloc,AppState>(
        bloc:appBloc ,
        builder: (context,state) {
          return Column(
            children: [
              Text(appBloc.state.count.toString()),
              TextButton(onPressed: (){
                appBloc.increment();
                Modular.to.pushNamed(AppRouts.home);
              }, child: Text('jj')),
            ],
          );
        }
      ),
    );
  }
}
