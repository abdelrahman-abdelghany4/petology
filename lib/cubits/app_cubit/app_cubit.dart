import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/cubits/app_cubit/app_states.dart';
import 'package:petology/data/models/pets_model.dart';
import 'package:petology/data/models/selection_model.dart';
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
  SelectionModel? selectionModel;

  void getSelection() {
    emit(AppLoadingState());
    DioHelper.getData(url: '/pets/filters/1',token: token).then((value) {

      selectionModel = SelectionModel.fromJson(value.data);
      print(selectionModel!.size);
      // print(value.data);
      emit(AppSuccessState());
    }).catchError((error) {
      print('error is الالا = ${error.toString()}');
      emit(AppErrorState(error.toString()));
    });
  }
  String category = 'Category';
  void selectCategory(String value) {
    category = value;
    emit(ChangeCategoryState());
  }

  String year = 'Year';
  void selectYear(String value) {
    year = value;
    emit(ChangeYearState());
  }

  String months = 'Month';
  void selectMonth(String value) {
    months = value;
    emit(ChangeMonthState());
  }

  String size = 'Size';
  void selectSize(value) {
    size = value.toString();
    emit(ChangeSizeState());
  }

  String breed = 'Breed';
  void selectBreed(String value) {
    breed = value;
    emit(ChangeBreedState());
  }

  String gender = 'Gender';
  void selectGender(String value) {
    gender = value;
    emit(ChangeGenderState());
  }

  String hairLength = 'Hair Length';
  void selectHairLength(String value) {
    hairLength = value;
    emit(ChangeHairLengthState());
  }

  String careBehaviour = 'Care & Behaviour';
  void selectCareBehaviour(String value) {
    careBehaviour = value;
    emit(ChangeCareBehaviourState());
  }

  String houseTraind = 'House Traind';
  void selectHouseTraind(String value) {
    houseTraind = value;
    emit(ChangeHouseTraindState());
  }

  String color = 'Color';
  void selectColor(String value) {
    color = value;
    emit(ChangeColorState());
  }

}