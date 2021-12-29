import 'package:bmi/layout/news_layout/cubit/cubit.dart';
import 'package:bmi/layout/news_layout/cubit/states.dart';
import 'package:bmi/layout/news_layout/news_layout.dart';
import 'package:bmi/shared/bloc_observe/bloc_observe.dart';
import 'package:bmi/shared/network/local/cache_helper.dart';
import 'package:bmi/shared/network/remote/dio_helper.dart';
import 'package:bmi/shared/style/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bmi_calculator/bmi_screen.dart';

void main() async{

// بيتأكد ان كل حاجه هنا في الميثود خلصت و بعدين يتفح الابلكيشن/
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getData(key: 'isDark');

  isDark ??= false;

  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {


  final bool isDark;

   MyApp(this.isDark);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context)=>NewsCubit()..getBusiness()..getSports()..getSciences(),
    child:  BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state){
        if (state is GetBusinessSuccessState) {
          NewsCubit.get(context).changeAppMode(fromShared: isDark);
        }
      },
      builder: (context,state){
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:   const NewsLayout(),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: NewsCubit.get(context).isDark?ThemeMode.dark:ThemeMode.light,
        // themeMode:  ThemeMode.light,

      );
        },
    ),
    );
  }
}

//96C7C1
//C85C5C
//90AACB