import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget{
  const Responsive({super.key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen
  }
  );

  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  static bool issmallScreen (BuildContext context){
    return MediaQuery.of(context).size.width<600;
  }
  static bool islargeScreen (BuildContext context){
    return MediaQuery.of(context).size.width>1200;
  }
  static bool ismediumScreen (BuildContext context){
    return MediaQuery.of(context).size.width>600 &&
     MediaQuery.of(context).size.width<=1200;

  }

  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(
     builder: (context,constraints) {
       if(constraints.maxWidth > 1200){
         return largeScreen;
       }else if(constraints.maxWidth<=1200 && constraints.maxWidth >= 600){
         return mediumScreen ?? largeScreen;
       } else{
         return smallScreen ?? largeScreen;
       }
     }
   );
  }

}