import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardAppearance: Brightness.light,
        enableInteractiveSelection: false,
        // readOnly: true,
        textCapitalization: TextCapitalization.words,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) => debugPrint("it workss"),
        toolbarOptions: const ToolbarOptions(cut: true, copy: true),
        textDirection: TextDirection.rtl,
        // maxLength: 2,
        inputFormatters: [
          FilteringTextInputFormatter.deny("a"),
          LengthLimitingTextInputFormatter(7),
        ],
        // expands: true,
        initialValue: "Merhaba",
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          helperText: "asd",
        ),
        buildCounter: (context, {int? currentLength, bool? isFocused, int? maxLength}) {
          return AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: 20,
            width: currentLength! * 10.toDouble(),
            color: Colors.green,
          );
        },
      ),
    );
  }
}


/*
keyboard appearance and keyboard type. this is very important and never forget buddy.
------
maxLenght: you can limit the textFormField characters lenght. So, you don't have to use validor and check.
------

inputFormatters: you can filter and set up lenght limit. limit property alternative of maxLenght property.
------

initialValue: default textFormField value. You can use it when you have already user email,you can show on the textFormField and
user would only press the button and login.
------

readOnly: if it is true, user cannot interact the textFormField. Remember homepage and select city page
------

toolBarOptions:when you select the text with cursor or tapped,there will some options of actions. For example copy,cut,past etc. that is
set up which property seem or not seem.
------

enableInteractiveSelection: the user cannot any action to textFormField like copy,paste,cut etc. only write and delete.
------

textInputAction: you can set up the button Property on the keyboard.
onFieldSubmitted: and here, you can set up what will happen when user press the textInputAction button.
------
textCapitalization: Capital letter each sentece or word. that will be required like bank app. user name. 
------
textDirection: Arabic or some language which sentences begin at the right.
-----
counterText: it similar to animatedContainer. you can count the text lenght.
----
helperText: you can add more info about the gap instead of the label.
*/
