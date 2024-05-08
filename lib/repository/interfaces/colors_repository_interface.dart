import 'package:flutter/material.dart';

abstract class IColorsRepository {
  Future<List<Color>> generateNewColors();
}
