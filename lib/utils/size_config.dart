import 'package:flutter/material.dart';

class SizeConfig {
  late BuildContext _context;
  late double _height;
  late double _width;
  late double _heightPadding;
  late double _widthPadding;

  SizeConfig(context) {
    this._context = context;
    final MediaQueryData _queryData = MediaQuery.of(this._context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding = _height -
        ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  double appHeight(double v) {
    return _height * v;
  }

  double appWidth(double v) {
    return _width * v;
  }

  double appVerticalPadding(double v) {
    return _heightPadding * v;
  }

  double appVerticalPaddingMedium() {
    return _heightPadding * 2;
  }

  double appVerticalPaddingSmall() {
    return _heightPadding * 1;
  }

  double appVerticalPaddingLarge() {
    return _heightPadding * 4;
  }

  double appHorizontalPadding(double v) {
    return _widthPadding * v;
  }

  //Majorly used for horizontal spacing
  double appHorizontalPaddingSmall() {
    return _widthPadding * 1;
  }

  double appHorizontalPaddingMedium() {
    return _widthPadding * 2;
  }

  double appHorizontalPaddingLarge() {
    return _widthPadding * 4;
  }


  /// Returns a vertical space with height set to [_VerticalSpaceVerySmall]
  Widget verticalSpaceVerySmall() {
    final queryData = MediaQuery.of(_context);
    final double verticalSpaceVerySmall = queryData.size.width * 0.005;
    return SizedBox(height: verticalSpaceVerySmall);
  }

  Widget verticalSpaceCustom(double value) {
    final queryData = MediaQuery.of(_context);
    final double verticalSpaceVerySmall = queryData.size.width * value;
    return SizedBox(height: verticalSpaceVerySmall);
  }


  /// Returns a vertical space with height set to [_VerticalSpaceSmall]
  Widget verticalSpaceSmall() {
    final queryData = MediaQuery.of(_context);
    final double verticalSpaceSmall = queryData.size.height * 0.01;
    return SizedBox(height: verticalSpaceSmall);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceMedium]
  Widget verticalSpaceMedium() {
    final queryData = MediaQuery.of(_context);
    final double verticalSpaceMedium = queryData.size.height * 0.02;
    return SizedBox(height: verticalSpaceMedium);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceLarge]
  Widget verticalSpaceLarge() {
    final queryData = MediaQuery.of(_context);
    final double verticalSpaceLarge = queryData.size.height * 0.04;
    return SizedBox(height: verticalSpaceLarge);
  }

  /// Returns a vertical space with height set to [_VerticalSpaceSmall]
  Widget verticalSpaceExtraLarge() {
    final queryData = MediaQuery.of(_context);
    final double verticalSpaceExtraLarge = queryData.size.width * 0.1;
    return SizedBox(height: verticalSpaceExtraLarge);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceSmall]
  Widget horizontalSpaceSmall() {
    final queryData = MediaQuery.of(_context);
    final double horizontalSpaceSmall = queryData.size.width * 0.02;
    return SizedBox(width: horizontalSpaceSmall);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceSmall]
  Widget horizontalSpaceVerySmall() {
    final queryData = MediaQuery.of(_context);
    final double horizontalSpaceSmall = queryData.size.width * 0.01;
    return SizedBox(width: horizontalSpaceSmall);
  }

  /// Returns a vertical space with height set to [_HorizontalSpaceMedium]
  Widget horizontalSpaceMedium() {
    final queryData = MediaQuery.of(_context);
    final double horizontalSpaceMedium = queryData.size.width * 0.04;
    return SizedBox(width: horizontalSpaceMedium);
  }

  /// Returns a vertical space with height set to [HorizontalSpaceLarge]
  Widget horizontalSpaceLarge() {
    final queryData = MediaQuery.of(_context);
    final double horizontalSpaceLarge = queryData.size.width * 0.08;
    return SizedBox(width: horizontalSpaceLarge);
  }
}
