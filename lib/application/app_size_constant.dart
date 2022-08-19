import 'package:flutter/material.dart';

class SizeConfig {
  final BuildContext _context;
  double? _height;
  double? _width;
  double? _heightPadding;
  double? _widthPadding;

  SizeConfig(this._context) {
    MediaQueryData queryData = MediaQuery.of(_context);
    _height = queryData.size.height / 100.0;
    _width = queryData.size.width / 100.0;
    _heightPadding =
        _height! - ((queryData.padding.top + queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width! - (queryData.padding.left + queryData.padding.right) / 100.0;
  }

  double w() {
    return _width!;
  }

  double h() {
    return _height!;
  }

  double rH(double v) {
    return _height! * v;
  }

  double rW(double v) {
    return _width! * v;
  }

  double rHP(double v) {
    return _heightPadding! * v;
  }

  double rWP(double v) {
    return _widthPadding! * v;
  }
}
