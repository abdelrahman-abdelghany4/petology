import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/cubits/login_cubit/login_states.dart';
import 'package:petology/cubits/register_cubit/login_states.dart';
import 'package:petology/data/models/auth_model.dart';
import 'package:petology/network/remote/dio_helper.dart';
import 'package:petology/network/remote/end_points.dart';

class AppRegisterCubit extends Cubit<AppRegisterStates> {
  AppRegisterCubit() : super(AppRegisterInitialState());

  static AppRegisterCubit get(context) => BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();

  AuthModel? authModel;
  void userRegister({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String country,
  }) {
    emit(AppRegisterLoadingState());

    DioHelper.postData(
      url: REGISTER,
      data: {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'phoneNumber': phoneNumber,
        'country': country,
      },
    ).then((value) {
      authModel = AuthModel.fromJson(value.data);
      print(authModel!.accessToken);
      emit(AppRegisterSuccessState());
    }).catchError((error) {
      print('error is الالا = ${error.toString()}');
      emit(AppRegisterErrorState(error.toString()));
    });
  }
}