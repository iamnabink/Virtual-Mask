import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InAppUpdateAlertDialog extends StatelessWidget {
  final bool forceUpdate;
  final String appName;
  final String playStoreUrl;
  final String titlePrefix;
  final String description;
  final String updateButtonLabel;
  final String closeButtonLabel;
  final String ignoreButtonLabel;

  const InAppUpdateAlertDialog({
    required this.forceUpdate,
    required this.appName,
    required this.playStoreUrl,
    required this.titlePrefix,
    required this.description,
    required this.updateButtonLabel,
    required this.closeButtonLabel,
    required this.ignoreButtonLabel,
  });

  @override
  Widget build(BuildContext context) {
    /// Set up the Buttons
    final Widget closeAppButton = FlatButton(
      onPressed: () => exit(0),
      child: Text(closeButtonLabel.toUpperCase()),
    );

    final Widget ignoreButton = FlatButton(
      onPressed: () => Navigator.pop(context),
      child: Text(ignoreButtonLabel.toUpperCase()),
    );

    final Widget updateButton = FlatButton(
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () => launch(playStoreUrl),
      child: Text(updateButtonLabel.toUpperCase()),
    );

    return AlertDialog(
      title: Text(
          forceUpdate ? "$titlePrefix $appName" : "$titlePrefix $appName?"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'New version available',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 24.0),
          Text(description),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              if (forceUpdate) closeAppButton else ignoreButton,
              updateButton,
            ],
          ),
          const SizedBox(height: 16.0),
          const Divider(),
          const SizedBox(height: 16.0),
          Image.asset(
            'assets/images/google_play.png',
            width: 120.0,
          ),
        ],
      ),
    );
  }
}
