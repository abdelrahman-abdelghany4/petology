import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/cubits/app_cubit/app_states.dart';
import 'package:petology/data/models/bets_model.dart';
import 'package:petology/network/remote/dio_helper.dart';
import 'package:petology/network/remote/end_points.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();

  PetsModel? petsModel;
  void getPets() {
    emit(AppLoadingState());
    DioHelper.getData(url: '/categories/2/pets',token: token).then((value) {

      petsModel = PetsModel.fromJson(value.data);
      print(petsModel!.pets![0].name);
      // print(value.data);
      emit(AppSuccessState());
    }).catchError((error) {
      print('error is الالا = ${error.toString()}');
      emit(AppErrorState(error.toString()));
    });
  }
}