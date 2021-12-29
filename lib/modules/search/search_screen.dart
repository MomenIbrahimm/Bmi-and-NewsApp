import 'package:bmi/layout/news_layout/cubit/cubit.dart';
import 'package:bmi/layout/news_layout/cubit/states.dart';
import 'package:bmi/shared/component/component.dart';
import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).search;

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },icon:const Icon(IconlyLight.arrowLeft2) ,padding: const EdgeInsets.only(left: 30),),
            elevation: 10.0,
            backgroundColor: HexColor('C85C5C'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: searchController,
                  onChanged: (value) {
                    NewsCubit.get(context).getSearch(value);
                  },
                  decoration: InputDecoration(
                      hintText: 'Search',
                      filled: true,
                      fillColor: NewsCubit.get(context).isDark? Colors.white : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.5),
                      )),
                ),
                Expanded(
                    child: BuildCondition(
                  condition: state is! GetSearchLoadingState,
                  builder: (context) => ListView.separated(
                      itemBuilder: (context, index) =>
                          buildArticleItem(context, list[index]),
                      separatorBuilder: (context, index) => myDivider(),
                      itemCount: list.length),
                  fallback: (context) =>
                      const Center(child: CircularProgressIndicator()),
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
