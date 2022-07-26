abstract class AppRegisterStates {}

class AppRegisterInitialState extends AppRegisterStates {}

class AppRegisterLoadingState extends AppRegisterStates {}

class AppRegisterSuccessState extends AppRegisterStates
{
  // final RegisterModel? loginModel;
  //
  // AppRegisterSuccessState(this.loginModel);
}

class AppRegisterErrorState extends AppRegisterStates
{
  final String error;

  AppRegisterErrorState(this.error);
}

class AppChangePasswordVisibilityState extends AppRegisterStates {}

class AppRegisterChangeBottomSheetState extends AppRegisterStates {}

class AppGetTokenDoneState extends AppRegisterStates {}

class AppResetPasswordLoadingState extends AppRegisterStates {}

class AppResetPasswordSuccessState extends AppRegisterStates {

  // final ResetPasswordModel? resetPasswordModel;
  //
  // AppResetPasswordSuccessState(this.resetPasswordModel);
}

class AppResetPasswordErrorState extends AppRegisterStates {

  final String error;

  AppResetPasswordErrorState(this.error);
}