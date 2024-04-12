import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/presentation/providers/blog_provider.dart';

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
                  loading: () => Center(
                    child: CupertinoActivityIndicator(),
                  ),
                  data: (data) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        "https://plus.unsplash.com/premium_photo-1684171452382-3ff25b344227?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D",
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          data[index].title!,
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey.withOpacity(0.6),
                                          ),
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          data[index]
                                              .dateCreated!
                                              .split('T')[0],
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12),
                                    SizedBox(
                                      height: 40.h,
                                      width: 220.w,
                                      child: Text(
                                        data[index].subtitle!,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  error: (Object error, StackTrace stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          error.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              context.theme.primaryColor,
                            ),
                          ),
                          onPressed: () async {
                            final result = ref.refresh(getAllBlogProvider);
                          },
                          child: Text(
                            "RETRY",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
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
