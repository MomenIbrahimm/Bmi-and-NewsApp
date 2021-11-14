import 'package:bmi/layout/news_layout/cubit/cubit.dart';
import 'package:bmi/layout/news_layout/cubit/states.dart';
import 'package:bmi/shared/component/component.dart';
import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = NewsCubit.get(context).science;

    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return BuildCondition(
          condition:state is! GetScienceLoadingState,
          builder: (context) => ListView.separated(
              itemBuilder: (context, index) => InkWell(
                  onTap: () {}, child: buildArticleItem(context, list[index])),
              separatorBuilder: (context, index) => myDivider(),
              itemCount: list.length),
          fallback: (context) =>
              const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
