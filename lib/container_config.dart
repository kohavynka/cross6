import 'package:flutter/material.dart';

class ContainerConfig with ChangeNotifier {
  double _width = 150.0;
  double _height = 150.0;
  double _topRightRadius = 0.0;

  double get width => _width;
  double get height => _height;
  double get topRightRadius => _topRightRadius;

  void setWidth(double width) {
    _width = width;
    notifyListeners();
  }

  void setHeight(double height) {
    _height = height;
    notifyListeners();
  }

  void setTopRightRadius(double radius) {
    _topRightRadius = radius;
    notifyListeners();
  }
}
