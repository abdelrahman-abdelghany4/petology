import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/cubits/app_cubit/app_cubit.dart';
import 'package:petology/cubits/app_cubit/app_states.dart';
import 'package:petology/network/local/cache_helper.dart';
import 'package:petology/network/remote/dio_helper.dart';
import 'package:petology/network/remote/end_points.dart';
import 'package:petology/screens/about_us.dart';
import 'package:petology/screens/adaption_2_screen.dart';
import 'package:petology/screens/adaption_3.dart';
import 'package:petology/screens/adaption_screen.dart';
import 'package:petology/screens/help_screen.dart';
import 'package:petology/screens/login_screen.dart';
import 'package:petology/screens/signup_screen.dart';
import 'package:petology/shared/block_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();

  token = CacheHelper.getData(key: 'token') ?? '';

  BlocOverrides.runZoned(
    () {
      runApp(
        MyApp(),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()..getPets()..getSelection()..getFeed()),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            title: 'Petology',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HelpScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
//