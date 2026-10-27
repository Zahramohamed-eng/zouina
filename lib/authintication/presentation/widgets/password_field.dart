import 'package:flutter/material.dart';
import 'package:zouina/core/app_colors.dart';

 class  PasswordField extends StatefulWidget {
    PasswordField ({super.key, this.ctrl,this.validator});
   
  TextEditingController? ctrl;
  String? Function(String?)? validator;

  @override
  State< PasswordField > createState() => _CustumTextFieldState();
}

class _CustumTextFieldState extends State<PasswordField > {
  bool isobscure=true;
  IconData? visabile;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
         
        
        Text( "Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight(600)),)
    
    
    
    ,TextFormField(
      obscureText: isobscure,
      validator: widget.validator,
      controller: widget.ctrl,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(hint:  Text(  "Enter your security password",style: TextStyle(fontSize: 14,color: AppColors.textClr),)
     , disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular( 16),borderSide: BorderSide(color: AppColors.textClr))
     
      ,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular( 16),borderSide: BorderSide(color: AppColors.lightpurpleClr,width: 2), ),prefixIcon: Icon(Icons.lock_outlined)
    , errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16),borderSide: BorderSide(color: Colors.red)),
      suffixIcon: IconButton( onPressed: () {
        setState(() {
          isobscure=!isobscure;
        });
      },
      icon: Icon(isobscure ? Icons.visibility_off :  Icons.visibility) )
      ),
      
    )
    
    
    
    
    
    
    
    
    
    
    
    
    
    ],);
  }
}