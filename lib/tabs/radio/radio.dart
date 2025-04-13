import 'package:flutter/material.dart';
import 'package:islami_app/tabs/radio/Switch_Button.dart';
import 'package:islami_app/tabs/radio/reciters_tab.dart';
import 'package:islami_app/tabs/radio/radio_tab.dart';
import 'package:islami_app/utils/app_colors.dart';

class RadioTap extends StatefulWidget{
  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  bool isRadioSelected = true;

  @override
  Widget build(BuildContext context) {
   return Column(

      children: [
        SizedBox(height: 50,) ,
       Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SwitchButton("Radio", isRadioSelected, () {
                setState(() => isRadioSelected = true);
              }),
               SwitchButton("Reciters", !isRadioSelected, () {
                setState(() => isRadioSelected = false);
              }),
            ],
          ) ,
        isRadioSelected ?
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) => RadioTabBlock() ,itemCount: 5, )
        ) : Expanded(
          child: ListView.builder(itemBuilder: (context, index) => RecitersTabBlock() ,itemCount: 5,  )
        )

      ],
   );
  }

  
}