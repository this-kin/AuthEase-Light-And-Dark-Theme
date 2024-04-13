import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/enum/route_enum.dart';
import 'package:qoute_app/data/entities/blog_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/presentation/providers/blog_provider.dart';

class ArticleTile extends ConsumerWidget {
  final BlogModel? model;
  const ArticleTile({super.key, this.model});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Dismissible(
        key: ValueKey(model!.id),
        background: Container(
          color: Colors.redAccent,
          child: Center(
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
        onDismissed: (direction) {
          // on swipe delete blog post
          ref.read(blogStateProvider.notifier).delete(blogId: model!.id);
        },
        child: InkWell(
          onTap: () {
            // go to article details page
            GoRouter.of(context)
                .pushNamed(RouteGenerator.details.name, extra: model);
          },
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
                          model!.title!,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          model!.dateCreated!.split('T')[0],
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
                        model!.subtitle!,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeErrorWidget extends ConsumerWidget {
  final Object? error;
  const HomeErrorWidget({super.key, this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
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
              theme.primaryColor,
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
  }
}
