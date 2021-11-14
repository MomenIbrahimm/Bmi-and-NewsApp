import 'package:bmi/layout/news_layout/cubit/cubit.dart';
import 'package:bmi/layout/news_layout/cubit/states.dart';
import 'package:bmi/shared/component/component.dart';
import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).business;

        return Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BuildCondition(
                condition: state is! GetBusinessLoadingState,
                builder: (context) => ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {},
                        child: buildArticleItem(context, list[index])),
                    separatorBuilder: (context, index) => myDivider(),
                    itemCount: list.length),
                fallback: (context) =>
                    const Center(child: CircularProgressIndicator()),
              )),
        );
      },
    );
  }
}
