import 'package:flutter/material.dart';
import 'package:login_signup/components/text_field.dart';

import '../constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanges;
  const RoundedInputField({
    Key key, this.hintText, 
    this.icon = Icons.person, 
    this.onChanges,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanges,
        decoration: InputDecoration(
          icon: Icon(icon,
          color: kPrimaryColor),
          hintText: hintText,
          border: InputBorder.none),
          ),
    );
  }
}