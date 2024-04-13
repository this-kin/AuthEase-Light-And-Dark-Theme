import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:qoute_app/core/extensions/widget_extension.dart';
import 'package:qoute_app/data/entities/blog_model.dart';

class ArticleDetail extends StatelessWidget {
  final BlogModel? blog;
  const ArticleDetail({super.key, this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Semantics(
          button: true,
          child: InkWell(
            onTap: () {
              // go back
              context.pop();
            },
            borderRadius: BorderRadius.circular(20.sp),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: SvgPicture.asset(
                ConstantImage.back,
                fit: BoxFit.scaleDown,
                color: Colors.black,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text("${blog!.title}"),
        actions: [],
      ),
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                blog!.title!,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                blog!.dateCreated!.split('T')[0],
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey.withOpacity(0.6),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 400.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.sp),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://plus.unsplash.com/premium_photo-1684171452382-3ff25b344227?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(blog!.body!),
            ],
          ),
        ),
      ),
    );
  }
}
