import 'package:flutter/material.dart';
import 'package:zouina/core/app_colors.dart';

 class CustumTextField extends StatefulWidget {
   CustumTextField({super.key, this.icon, required this.text,required this.hint ,this.ctrl,this.validator});
  final IconData? icon;
  final String text,hint;
  TextEditingController? ctrl;
  String? Function(String?)? validator;

  @override
  State<CustumTextField> createState() => _CustumTextFieldState();
}

class _CustumTextFieldState extends State<CustumTextField> {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [Text(widget.text,style: TextStyle(fontSize: 14,fontWeight: FontWeight(600)),)
    
    
    
    ,TextFormField(
      validator: widget.validator,
      controller: widget.ctrl,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(hint:  Text( widget.hint,style: TextStyle(fontSize: 14,color: AppColors.textClr),)
     , disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular( 16),borderSide: BorderSide(color: AppColors.textClr))
     
      ,enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular( 16),borderSide: BorderSide(color: AppColors.lightpurpleClr,width: 2), ),prefixIcon: Icon(widget.icon)
    , errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16),borderSide: BorderSide(color: Colors.red)),
    
      ),
      
    )
    
    
    
    
    
    
    
    
    
    
    
    
    
    ],);
  }
}