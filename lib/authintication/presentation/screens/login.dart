import 'package:flutter/material.dart';
import 'package:zouina/authintication/presentation/widgets/custum_text_field.dart';
import 'package:zouina/core/app_colors.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(body: 
   Stack(
     children: [
       Container(
        width:double.infinity,
        height:  double.infinity,
         decoration: BoxDecoration(gradient: AppColors.primeclrGradient) 
      , child: Padding(
         padding: const EdgeInsets.only(bottom: 64,left:80,right: 80,top: 64 ),
         child: Column(spacing: 7,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [
               Container(
                width: 155,
                height: 25,
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
               decoration: BoxDecoration(  color: AppColors.whiteClr.withValues(alpha: 0.15),
               borderRadius: BorderRadius.circular( 9999)
                
               ),
              
                child: Row(
                  children: [
                    Icon( Icons.auto_awesome,color: AppColors.whiteClr,size: 11.92, ),
                    Text(" HAUTE JOAILLERIE",style: TextStyle(color: AppColors.whiteClr,
                                   fontSize:10,fontWeight: FontWeight( 700) ),),
                  ],
                )),
                 Container(
                width: 40,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
               decoration: BoxDecoration(  color: AppColors.whiteClr.withValues(alpha: 0.15),
               borderRadius: BorderRadius.circular(  16)
               
               ),
              
                child: Icon( Icons.arrow_back_ios_new,color: AppColors.whiteClr,size: 20, )),
                 
           Text("Z O W I N A",style: TextStyle(color: AppColors.whiteClr,
                                   fontSize:32,
          fontWeight: FontWeight( 600) ,fontFamily: "Playfair Display")),
                  
           Text("Welcome Back",style: TextStyle(color: AppColors.whiteClr,
                                   fontSize:24,
          fontWeight: FontWeight( 500) ,fontFamily: "Playfair Display")),
         
        
         
             Text("Sign in to access your curated vault",style: TextStyle(color: AppColors.whiteClr,
                                   fontSize:14,
          fontWeight: FontWeight( 400)  )),
          
         ],
          
         ),
       ),
       
       
       ),
      
      Positioned(
        bottom: 0,
        left: 0,
        right: 0, 
        top: 275,
       child: Container(
        padding: EdgeInsets.all( 25),
        width: double.infinity,
         height: double.infinity,
        decoration: BoxDecoration(color: AppColors.whiteClr,
          borderRadius: BorderRadius.only(topLeft:Radius.circular( 20) ,topRight: Radius.circular( 20)  )),
        child:  Form(child: Column(children: [
       
          CustumTextField(hint:"name@example.com" ,text:"Email Address" ,icon:Icons.email_outlined ,),
       
       ]
       
       
       )),),
     )
  ], ),

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   );
  }
}