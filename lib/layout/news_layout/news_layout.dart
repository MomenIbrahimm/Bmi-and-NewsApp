import 'package:bmi/layout/news_layout/cubit/cubit.dart';
import 'package:bmi/layout/news_layout/cubit/states.dart';
import 'package:bmi/modules/search/search_screen.dart';
import 'package:bmi/shared/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(

          appBar: AppBar(
            leading: IconButton(
              padding: const EdgeInsets.only(left: 30),
              onPressed: (){
                NewsCubit.get(context).changeAppMode();
              },
              icon:NewsCubit.get(context).isDark? const Icon(Icons.brightness_3):const Icon(Icons.brightness_3_outlined),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    navigateTo(context, const SearchScreen());
                  }, icon: const Icon(IconlyBroken.search)),
              const SizedBox(width: 30,),

            ],
            title: Text(NewsCubit.get(context)
                .appTitle[NewsCubit.get(context).currentIndex],),
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.business_rounded), label: 'Business'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.sports), label: 'Sports'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.science_rounded), label: 'Science'),
              ],
              currentIndex: NewsCubit.get(context).currentIndex,
              onTap: (index) {
                NewsCubit.get(context).changeBottomNav(index);
              },
            ),
          ),
          body: NewsCubit.get(context)
              .screens[NewsCubit.get(context).currentIndex],
        );
      },
    );
  }
}
