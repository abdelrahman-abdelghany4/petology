abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppLoadingState extends AppStates {}

class AppSuccessState extends AppStates {
  // final Model? loginModel;
  //
  // AppSuccessState(this.loginModel);
}

class AppErrorState extends AppStates {
  final String error;

  AppErrorState(this.error);
}

class AppChangePasswordVisibilityState extends AppStates {}

class AppChangeBottomSheetState extends AppStates {}

class AppGetTokenDoneState extends AppStates {}

class AppResetPasswordLoadingState extends AppStates {}

class AppResetPasswordSuccessState extends AppStates {

  // final ResetPasswordModel? resetPasswordModel;
  //
  // AppResetPasswordSuccessState(this.resetPasswordModel);
}

class AppResetPasswordErrorState extends AppStates {

  final String error;

  AppResetPasswordErrorState(this.error);
}

class ChangeCategoryState extends AppStates {}

class ChangeYearState extends AppStates {}

class ChangeMonthState extends AppStates {}

class ChangeSizeState extends AppStates {}

class ChangeBreedState extends AppStates {}

class ChangeGenderState extends AppStates {}

class ChangeHairLengthState extends AppStates {}

class ChangeCareBehaviourState extends AppStates {}

class ChangeHouseTraindState extends AppStates {}

class ChangeColorState extends AppStates {}