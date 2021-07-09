import 'package:flutter/material.dart';

class CustomLoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: FractionalOffset.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

void showLoadingDialog(BuildContext context, {Widget? loadingWidget}) {
  showDialog(
    context: context,
    builder: (BuildContext context) =>
        loadingWidget ?? CustomLoadingDialog(),
  );
}

void hideLoadingDialog(BuildContext context, {Widget? loadingWidget}) {
  Navigator.of(context).pop(loadingWidget ?? CustomLoadingDialog());
}
