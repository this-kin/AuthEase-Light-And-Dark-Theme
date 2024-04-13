import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qoute_app/core/toast_helper.dart';
import 'package:qoute_app/data/entities/blog_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qoute_app/constants/image_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoute_app/presentation/providers/blog_provider.dart';
import 'package:qoute_app/presentation/providers/states/future_state.dart';
import 'package:qoute_app/presentation/widgets/common_widgets/custom_field.dart';

class UpdateArticle extends ConsumerWidget {
  final BlogModel? blog;

  const UpdateArticle({super.key, this.blog});

  static final _formKey = GlobalKey<FormState>();

  static final _bodyController = TextEditingController();
  static final _titleController = TextEditingController();
  static final _subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _bodyController.text = blog!.body!;
    _titleController.text = blog!.title!;
    _subtitleController.text = blog!.subtitle!;
    ref.listen<FutureState>(
      blogStateProvider,
      (previous, next) {
        next.maybeWhen(
          data: (message) {
            ToastHelper.success(context, message: message);
          },
          failed: (message) {
            ToastHelper.err(context, message: message);
          },
          orElse: () {},
        );
      },
    );
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        elevation: 1,
        leading: Semantics(
          button: true,
          child: InkWell(
            onTap: () {
              // go back
              GoRouter.of(context).pop();
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
        title: Text("Update Blog"),
        actions: [
          TextButton(
            onPressed: () {
              // create
              if (_formKey.currentState!.validate()) {
                ref.read(blogStateProvider.notifier).update(
                      id: blog!.id,
                      body: _bodyController.text,
                      title: _titleController.text,
                      subtitle: _subtitleController.text,
                    );
              }
            },
            child: Text("Update"),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    "Please Enter The Following Details",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 27.h),
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(height: 5.h),
                  CustomTextField(
                    controller: _titleController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a title";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Subtitle",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(height: 5.h),
                  CustomTextField(
                    controller: _subtitleController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a subtitle";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Body",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(height: 5.h),
                  SecondaryTextField(
                    controller: _bodyController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a body";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
