import 'package:flutter/cupertino.dart';
import 'package:virtual_mask/models/response_model.dart';

typedef ResponseWidget<T> = Widget Function(BuildContext context, ResponseModal snapshot); /// typedef for response model

// ignore: must_be_immutable
class NetworkDataWidgetBuilder<T> extends StatelessWidget{
  /// Creates a widget that builds based on the passed Model
  /// interaction with a [Future].
  ///
  /// The [builder] must not be null.
  NetworkDataWidgetBuilder({
    Key? key,
    required this.result,
    required this.builder,
  })  : super(key: key);

  ResponseModal result;

  ResponseWidget<T> builder;

  @override
  Widget build(BuildContext context) {
  result ??= ResponseModal();
  return builder(context, result);
  }

}

