import 'package:flutter/material.dart';
import 'package:mvp/repository/colors_repository.dart';
import 'package:mvp/repository/interfaces/colors_repository_interface.dart';

class ColorGeneratorModel {
  late IColorsRepository _colorsRepository;

  ColorGeneratorModel() {
    _colorsRepository = ColorsRepository();
  }

  List<Color> colors = [];

  void createNewColors() async {
    List<Color> _list = await _colorsRepository.generateNewColors();
    colors.addAll(_list);
  }
}
