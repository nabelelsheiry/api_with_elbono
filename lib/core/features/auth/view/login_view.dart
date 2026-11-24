import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/constants/app_text_styles.dart';
import 'package:api_with_elbono/core/features/auth/widgets/button_widget.dart';
import 'package:api_with_elbono/core/features/auth/widgets/text_form_field_widget.dart';
import 'package:api_with_elbono/core/features/home/views/root_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Gap(60),
                  Hero(tag: "logo",child: Image.asset(AppAssets.branding)),
                  Gap(10),
                  Center(child: Text("Welcome Back, Discover The Fast Food!",style: AppTextStyles.white13w500,)),
                  Gap(60),
                  TextFormFieldWidget(hintText: "Email Address",
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Email is required';
                        }
                        if (!RegExp(r'^[\w.+-]+@[\w-]+\.[\w.-]+$').hasMatch(value.trim())) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                  ),
                  Gap(30),
                  TextFormFieldWidget(hintText: "Password",
                    controller: passwordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  Gap(30),
                  ButtonWidget(text: "Login",onTap: (){
                    if(formKey.currentState!.validate()){
                      print("success Login");
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RootView(),));
                    }
                  },)
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
