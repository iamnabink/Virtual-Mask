import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:virtual_mask/app_config/ui_assets.dart';

class EmptyView extends StatelessWidget {
  final String message;
  final bool handleError;
  final Function? onErrorFunction;

  const EmptyView({required this.message,this.handleError = false, this.onErrorFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
            child: SizedBox(
          height: 200,
          width: 200,
          child: FlareActor(
            UIAssets.emptyViewAnim,
            // animation:'Alarm',
            animation: 'idle',
          ),
        )),
        // SizedBox(height: 10,),
        Center(
            child: Text(
          message ?? 'An Error Occurred, Please Try again later!..',
          style: const TextStyle(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 14.0),
        )),
        const SizedBox(height: 20,),
        if (handleError==true) Center(
            child: ElevatedButton(onPressed:()=>onErrorFunction,child: const Text('Retry Connection'),)) else Container(),
      ],
    );
  }
}
