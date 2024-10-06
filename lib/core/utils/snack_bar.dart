import 'package:flutter/material.dart';

SnackBar buildErrSnackBar(String errorMessage) {
  return SnackBar(
    content: Text(errorMessage),
    backgroundColor: Colors.blue,
  );
}
