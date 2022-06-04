import 'package:back/Module/app/bloc/app.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Cubit<AppState> {
  AppBloc():super(AppState()) ;
  void increment(){
    emit(state.copyWith(count: state.count++));
  }
}