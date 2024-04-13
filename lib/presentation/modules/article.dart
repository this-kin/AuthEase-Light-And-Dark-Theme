import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/presentation/providers/blog_provider.dart';
import 'package:qoute_app/presentation/widgets/home_widget/article_tile.dart';

class Article extends ConsumerStatefulWidget {
  const Article({super.key});

  @override
  ConsumerState<Article> createState() => _ArticleState();
}

class _ArticleState extends ConsumerState<Article> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    final articles = ref.watch(getAllBlogProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: context.theme.scaffoldBackgroundColor,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            "Fri, June 16th",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // go to notification
            },
            icon: Icon(
              CupertinoIcons.bell_fill,
              size: 27.sp,
            ),
          )
        ],
      ),
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Quick Reads",
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.h),
            Wrap(
              spacing: 12.w,
              children: List.generate(
                4,
                (index) => AnimatedContainer(
                  decoration: BoxDecoration(
                    color: index == _selected
                        ? context.theme.primaryColor
                        : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  duration: const Duration(milliseconds: 300),
                  child: InkWell(
                    onTap: () {
                      _selected = index;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Popular",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                child: articles.when(
                  loading: () => Center(child: CupertinoActivityIndicator()),
                  error: (Object error, StackTrace stackTrace) {
                    return HomeErrorWidget(error: error);
                  },
                  data: (data) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (_, index) {
                        return ArticleTile(model: data[index]);
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
