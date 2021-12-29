import 'package:bmi/layout/news_layout/cubit/states.dart';
import 'package:bmi/modules/business/business_screen.dart';
import 'package:bmi/modules/science/science_screen.dart';
import 'package:bmi/modules/sports/sports_screen.dart';
import 'package:bmi/shared/network/local/cache_helper.dart';
import 'package:bmi/shared/network/remote/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];

  List<String> appTitle = [
    'Business News',
    'Sports News',
    'Science News',
  ];

  int currentIndex = 0;

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness() {
    emit(GetBusinessLoadingState());

    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apiKey': 'da2217f76a4b4a499b2d4a56efedd6e5',
    }).then((value) {
      business = value.data['articles'];
      emit(GetBusinessSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetBusinessErrorState());
    });
  }

  List<dynamic> sports = [];

  void getSports() {
    emit(GetSportsLoadingState());

    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'sports',
      'apiKey': 'da2217f76a4b4a499b2d4a56efedd6e5',
    }).then((value) {
      sports = value.data['articles'];
      emit(GetSportsSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetSportsErrorState());
    });
  }

  List<dynamic> science = [];

  void getSciences() {
    emit(GetScienceLoadingState());

    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'science',
      'apiKey': 'da2217f76a4b4a499b2d4a56efedd6e5',
    }).then((value) {
      science = value.data['articles'];
      emit(GetScienceSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetScienceErrorState());
    });
  }

  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      emit(ChangeAppModeState());
    } else {
      isDark = !isDark;
      CacheHelper.setData(key: 'isDark', value: isDark);
      emit(ChangeAppModeState());
    }
  }

  List<dynamic> search = [];

  void getSearch(String value) {
    emit(GetSearchLoadingState());

    DioHelper.getData(
        url: 'v2/everything',
        query: {
          'q' : value,
          'apiKey' :'da2217f76a4b4a499b2d4a56efedd6e5'
        })
        .then((value) {
          search = value.data['articles'];
          emit(GetSearchSuccessState());
    })
        .catchError((error) {
      emit(GetSearchErrorState());
    });
  }
}
