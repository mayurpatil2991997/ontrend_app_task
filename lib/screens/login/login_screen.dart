import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ontrend/constants/app_const_assets.dart';
import 'package:ontrend/controller/login/login_controller.dart';
import 'package:ontrend/core/strings.dart';
import 'package:ontrend/core/theme/app_color.dart';
import 'package:ontrend/core/theme/app_text_style.dart';
import 'package:ontrend/utils/validator.dart';
import 'package:ontrend/widgets/button_widget.dart';
import 'package:ontrend/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 7.h,
              ),
              const Icon(
                Icons.arrow_back_ios_outlined,
              ),
              Center(
                child: Image.asset(
                  height: 38.h,
                  AppAssets.logo,
                ),
              ),
              Center(
                child: Text(
                  welcome,
                  style: AppTextStyle.bold
                      .copyWith(color: AppColor.blackColor, fontSize: 26),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              CustomTextField(
                hintText: emailOrPhone,
                controller: controller.emailController,
                validator: (String? value) =>
                    Validators.validateEmail(value!.trim()),
                keyboardType: null,
              ),
              SizedBox(
                height: 3.h,
              ),
              CustomTextField(
                hintText: password,
                controller: controller.passwordController,
                validator: (String? value) =>
                    Validators.validatePassword(value!.trim()),
                keyboardType: null,
              ),
              SizedBox(
                height: 1.2.h,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(right: 7.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      forgotPassword,
                      style: AppTextStyle.semiBold.copyWith(
                          color: AppColor.blueColor.withOpacity(0.4),
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              ButtonWidget(
                text: login,
                onTap: () {},
                height: 7.h,
                borderRadius: 10,
                bColor: AppColor.orangeColor,
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    notHaveAccount,
                    style: AppTextStyle.regular.copyWith(
                        color: AppColor.blackColor,
                        fontSize: 14
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      signUp,
                      style: AppTextStyle.semiBold.copyWith(
                          color: AppColor.blueColor.withOpacity(0.4),
                          fontSize: 14
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
