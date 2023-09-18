import 'package:admin_panel/App_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Responsive.dart';

class AdminPannel extends StatelessWidget{
  const AdminPannel({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
   return Scaffold(
     backgroundColor:  Colors.blue[100],
     body: SizedBox(
       height: height,
       width: 450,
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Responsive.issmallScreen(context) ?  SizedBox()
          : Expanded(
               child: Container(
                 height:height,
                 color: AppColors.mainBlueColor,
                 child: Center(
                   child: Text("Admin Pannel",
                     style: TextStyle(
                       fontSize: 48.0,
                       color: AppColors.whiteColor,
                       fontWeight: FontWeight.w800,
                     ),

                   ),
                   ),
                 ),
               ),
           SizedBox(width: height*0.1,),
           Expanded(
               child: Container(
                 height: height,
                 margin: EdgeInsets.symmetric(horizontal:Responsive.issmallScreen(context)?height*0.032 : height*0.12),
                 child: SingleChildScrollView(
                   padding: EdgeInsets.only(bottom: 40.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       SizedBox(height: height *0.145,),
                       RichText(text: TextSpan(
                        children: [
                          TextSpan(
                          text: "Lets's",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: AppColors.blueColor,
                          ),
                          ),
                          TextSpan(
                            text: " Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 25.0,
                              color: AppColors.blueColor,
                            ),
                          ),
                        ]
                       ),

                       ),
                       SizedBox(height: height* 0.02,),
                       Text("Hey, Enter Your Details To Get Sign In \n To Your Account",
                       style: TextStyle(
                         fontSize: 12.0,
                       ),
                       ),
                       SizedBox(height: height* 0.064,),
                       Padding(
                         padding: const EdgeInsets.only(left: 12),
                         child: Text("Email",
                         style: TextStyle(
                           fontSize: 10,
                         ),
                         ),
                       ),
                       SizedBox(height: 6.0,),
                       Container(
                         height: 50.0,
                         width: width,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(16.0),
                           color: AppColors.whiteColor,
                         ),
                         child: TextFormField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             prefixIcon: IconButton(
                               onPressed: (){},
                               icon: Image.asset("lib/icons/email.png",scale: 10,),
                             ),
                             contentPadding: EdgeInsets.only(top: 16.0),
                             hintText: "UserName",
                             hintStyle: TextStyle(
                               fontWeight: FontWeight.w400,
                               color: AppColors.blueColor,
                               fontSize: 12,
                             )
                           ),
                         ),
                       ),

                       SizedBox(height: 7),
                       Padding(
                         padding: const EdgeInsets.only(left: 12),
                         child: Text("Password",
                           style: TextStyle(
                             fontSize: 10,
                           ),
                         ),
                       ),
                       SizedBox(height: 6.0,),
                       Container(
                         height: 50.0,
                         width: width,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(16.0),
                           color: AppColors.whiteColor,
                         ),
                         child: TextFormField(
                           obscureText: true,
                           obscuringCharacter: "*",
                           decoration: InputDecoration(
                               border: InputBorder.none,
                               suffixIcon: IconButton(
                                 onPressed: (){},
                                 icon: Image.asset("lib/icons/hidden.png",scale: 20,),
                               ),
                               prefixIcon: IconButton(
                                 onPressed: (){},
                                 icon: Image.asset("lib/icons/padlock.png",scale: 10,),
                               ),
                               contentPadding: EdgeInsets.only(top: 16.0),
                               hintText: "Password",
                               hintStyle: TextStyle(
                                 fontWeight: FontWeight.w400,
                                 color: AppColors.blueColor,
                                 fontSize: 12,

                               )
                           ),
                         ),
                       ),
                       SizedBox(height: height* 0.03,),
                       Align(
                         alignment: Alignment.centerRight,
                         child: TextButton(
                           onPressed: (){

                           },
                           child: Text('Forget Password',
                             style: TextStyle(
                               fontSize: 12,
                               color: AppColors.blueColor,
                             ),


                         ),
                         ),
                       ),

                       SizedBox(height: height* 0.05,),

                       Material(
                         color: Colors.transparent,
                         child: InkWell(
                           onTap: (){

                           },
                           borderRadius: BorderRadius.circular(16.0),
                           child: Ink(
                             padding: EdgeInsets.symmetric(horizontal: 70,vertical: 18),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(16.0),
                               color: AppColors.blueColor,

                             ),
                             child: Text("SIGN IN",
                             style: TextStyle(
                               fontWeight: FontWeight.w700,
                               color: AppColors.whiteColor,
                               fontSize: 15,
                             ),
                             ),
                           ),
                         ),
                       ),
                       
                       SizedBox(height: 50,),
                       TextButton(
                         onPressed: () {

                         },
                         child: Text("   SIGN UP   ",
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: AppColors.blueColor,
                         ),
                         ),
                       ),
                       
                       SizedBox(height: 20,),
                       Row(

                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: IconButton(onPressed: (){},
                                 icon: Image.asset("lib/icons/google.png",scale: 15,)
                             ,),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: IconButton(onPressed: (){},
                               icon: Image.asset("lib/icons/logo.png",scale: 15,)
                               ,),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: IconButton(onPressed: (){},
                               icon: Image.asset("lib/icons/instagram.png",scale: 15,)
                               ,),
                           ),
                         ],
                       )




                     ],
                   ),
                 ),

           ),

           )
         ],
       ),
     ),

   );
  }

}