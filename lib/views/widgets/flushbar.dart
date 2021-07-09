import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

void customSuccessFlushBar(BuildContext context, String message, {String? title,Color? color}){
  Flushbar(
    title: title ?? "Successful!!",
    message: message,
    icon: const Icon(LineAwesomeIcons.check_circle),
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.green,
  ).show(context);
}
void customErrorFlushBar(BuildContext context, String message, {String? title,Color? color}){
  Flushbar(
    title: title ?? "Error",
    message: message,
    icon: const Icon(LineAwesomeIcons.exclamation_circle,color: Colors.white,),
    duration: const Duration(seconds: 3),
    backgroundColor: Colors.red,
  ).show(context);
}
