import 'package:flutter/material.dart';
import 'package:zouina/core/app_colors.dart';

 class CustumTextField extends StatefulWidget {
   CustumTextField({super.key, this.icon, required this.text,required this.hint});
  final IconData? icon;
  final String text,hint;

  @override
  State<CustumTextField> createState() => _CustumTextFieldState();
}

class _CustumTextFieldState extends State<CustumTextField> {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [Text(widget.text,style: TextStyle(fontSize: 14),)
    
    
    
    ,TextField(
      decoration: InputDecoration(hint:  Text( widget.hint,style: TextStyle(fontSize: 14,color: AppColors.textClr),)
     , disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular( 16),borderSide: BorderSide(color: AppColors.textClr))
     
      ,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular( 16),borderSide: BorderSide(color: AppColors.textClr) ),prefixIcon: Icon(widget.icon)
      
      ),
    )
    
    
    
    
    
    
    
    
    
    
    
    
    
    ],);
  }
}