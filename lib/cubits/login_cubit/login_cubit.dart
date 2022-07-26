import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/cubits/login_cubit/login_states.dart';
import 'package:petology/data/models/auth_model.dart';
import 'package:petology/network/remote/dio_helper.dart';
import 'package:petology/network/remote/end_points.dart';

class AppLoginCubit extends Cubit<AppLoginStates> {
  AppLoginCubit() : super(AppLoginInitialState());

  static AppLoginCubit get(context) => BlocProvider.of(context);

  var formKey = GlobalKey<FormState>();

  AuthModel? authModel;
  void userLogin({
    required String email,
    required String password,
  }) {
    emit(AppLoginLoadingState());

    DioHelper.postData(
      url: LOGIN,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      authModel = AuthModel.fromJson(value.data);
      print(authModel!.accessToken);
      emit(AppLoginSuccessState());
    }).catchError((error) {
      print('error is الالا = ${error.toString()}');
      emit(AppLoginErrorState(error.toString()));
    });
  }
}
