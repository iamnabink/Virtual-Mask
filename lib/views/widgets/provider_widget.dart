// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// /// A widget that provides a value passed through a provider as a parameter of the build function.
// abstract class ProviderWidget<T> extends Widget {
//   final bool listen;
//
//   const ProviderWidget({Key key, this.listen = true}) : super(key: key);
//
//   @protected
//   Widget build(BuildContext context, T model);
//
//   @override
//   _DataProviderElement<T> createElement() => _DataProviderElement<T>(this);
// }
//
// class _DataProviderElement<T> extends ComponentElement {
//   _DataProviderElement(ProviderWidget widget) : super(widget);
//
//   @override
//   ProviderWidget get widget => super.widget;
//
//   @override
//   Widget build() => widget.build(this, Provider.of<T>(this, listen: widget.listen));
//
//   @override
//   void update(ProviderWidget newWidget) {
//     super.update(newWidget);
//     assert(widget == newWidget);
//     rebuild();
//   }
// }
//
// // /// uses Main View
// // class HomeViewProviderWidget extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Provider.value(
// //         value: Human(name: 'Dane', surname: 'Mackier'),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[FullNameWidget(), DuplicateNameWidget()],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // /// Model
// // class Human {
// //   final String name;
// //   final String surname;
// //
// //   Human({this.name, this.surname});
// // }
// //
// // /// consuming widget 1
// // class FullNameWidget extends ProviderWidget<Human> {
// //   @override
// //   Widget build(BuildContext context, Human model) {
// //     return Row(
// //       children: <Widget>[
// //         Text(
// //           model.name,
// //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
// //         ),
// //         const SizedBox(
// //           width: 50,
// //         ),
// //         Text(
// //           model.surname,
// //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
// //         ),
// //       ],
// //     );
// //   }
// // }
// //
// // /// consuming widget 2
// //
// // class DuplicateNameWidget extends ProviderWidget<Human> {
// //   @override
// //   Widget build(BuildContext context, Human model) {
// //     return Row(
// //       children: <Widget>[
// //         Text(model.name),
// //         const SizedBox(
// //           width: 50,
// //         ),
// //         Text(model.name),
// //       ],
// //     );
// //   }
// // }
//
// /// Non-updating Provider Widget - for static design (non - interactive)
// // class UpdateTitleButton extends ProviderWidget<HomeViewModel> {
// //  const UpdateTitleButton({
// //     Key key,
// //   }) : super(key: key, listen: false);
// //
// //   @override
// //   Widget build(BuildContext context, model) {
// //     return FloatingActionButton(
// //       onPressed: () {
// //         model.updateTitle();
// //       },
// //     );
// //   }
// // }