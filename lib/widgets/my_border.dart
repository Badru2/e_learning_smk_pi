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
  borderSide: const BorderSide(color: Colors.black),
  borderRadius: BorderRadius.circular(15),
);

final enabledBorderB2 = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.black, width: 2),
  borderRadius: BorderRadius.circular(15),
);

final focusedBorderB = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.black),
  borderRadius: BorderRadius.circular(15),
);

final focusedBorderB2 = OutlineInputBorder(
  borderSide: const BorderSide(color: Colors.black, width: 2),
  borderRadius: BorderRadius.circular(15),
);

final enabledBorderU = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.black),
);

final focusedBorderU = UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.black),
);
