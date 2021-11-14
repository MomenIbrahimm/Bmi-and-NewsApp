import 'package:bmi/layout/news_layout/cubit/cubit.dart';
import 'package:flutter/material.dart';

Widget buildArticleItem(context, article) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Container(
          width: 110.0,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              7.0,
            ),
            image: DecorationImage(
              image: NetworkImage('${article['urlToImage']}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Container(
            height: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    '${article['title']}',
                    style: TextStyle(
                        fontSize: 16,
                        color: NewsCubit.get(context).isDark
                            ? Colors.white
                            : Colors.black87),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${article['publishedAt']}',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget myDivider() {
  return const Divider(
    color: Colors.grey,
  );
}

void navigateTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}
