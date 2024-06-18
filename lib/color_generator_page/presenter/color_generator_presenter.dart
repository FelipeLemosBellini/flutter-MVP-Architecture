import 'package:flutter/cupertino.dart';
import 'package:mvp/color_generator_page/model/color_generator_model.dart';

class ColorGeneratorPresenter extends ChangeNotifier {
  final ColorGeneratorModel _model = ColorGeneratorModel();

  ColorGeneratorPresenter() : super();

  List<Color> get colors => _model.colors;

  Future<void> newColors() async {
    _model.createNewColors();
    notifyListeners();
  }
}
