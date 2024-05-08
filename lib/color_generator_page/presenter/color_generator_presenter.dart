import 'package:flutter/cupertino.dart';
import 'package:mvp/color_generator_page/model/color_generator_model.dart';
import 'package:mvp/repository/colors_repository.dart';
import 'package:mvp/repository/interfaces/colors_repository_interface.dart';

class ColorGeneratorPresenter extends ChangeNotifier {
  late IColorsRepository _colorsRepository;
  final ColorGeneratorModel _model = ColorGeneratorModel();

  ColorGeneratorPresenter() : super() {
    _colorsRepository = ColorsRepository();
  }

  List<Color> get colors => _model.colors;

  Future<void> newColors() async {
    _model.colors = await _colorsRepository.generateNewColors();

    notifyListeners();
  }
}
