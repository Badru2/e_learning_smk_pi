import 'package:flutter/material.dart';

var borderEmading = BoxDecoration(
  borderRadius: const BorderRadius.all(
    Radius.circular(25),
  ),
  border: Border.all(
    color: Colors.black,
    width: 3,
    style: BorderStyle.solid,
  ),
);

const boxShadows = BoxShadow(
  offset: Offset(1.0, 1.0),
  blurRadius: 10.0,
  spreadRadius: 0,
);

final enabledBorderB = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black),
  borderRadius: BorderRadius.circular(15),
);

final focusedBorderB = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black),
  borderRadius: BorderRadius.circular(15),
);
