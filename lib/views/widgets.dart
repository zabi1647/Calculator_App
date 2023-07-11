import 'package:flutter/material.dart';

Widget inputtext({TextEditingController? controller, String? txt}) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(hintText: txt),
  );
}

Widget button({Color? color, String? txt, Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      height: 50,
      width: 200,
      color: color,
      child: Text(txt ?? ""),
    ),
  );
}
