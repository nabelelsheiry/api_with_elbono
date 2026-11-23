import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword ;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  const TextFormFieldWidget({super.key, required this.hintText, required this.controller, this.isPassword=false, this.validator, this.prefixIcon});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}
class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  late bool _obscureText;
  void _togglePassword(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _obscureText = widget.isPassword;
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
           cursorHeight: 20,
           cursorColor: AppColors.primary,
           obscureText: _obscureText,
           validator: widget.validator,
           decoration: InputDecoration(
             prefixIcon: widget.prefixIcon,
             suffixIcon:widget.isPassword ?  GestureDetector(
                 onTap: _togglePassword,
                     child: _obscureText? Icon(CupertinoIcons.eye_fill):Icon(CupertinoIcons.eye_slash_fill),
             ) : null,
             enabledBorder: OutlineInputBorder(
               borderSide: BorderSide(color: AppColors.white),
                   borderRadius: BorderRadius.circular(16)
             ),
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: AppColors.white),
                 borderRadius: BorderRadius.circular(16)
             ),
             errorBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: AppColors.red),
                 borderRadius: BorderRadius.circular(16)
             ),
             hintText: widget.hintText,
             fillColor: AppColors.white,
             filled: true,
           ),
    );
  }
}
