import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:mvp/repository/interfaces/colors_repository_interface.dart';

class ColorsRepository extends IColorsRepository {
  @override
  Future<List<Color>> generateNewColors() async {
    await Future.delayed(const Duration(seconds: 1));

    List<Color> list = [];
    Random random = Random();
    for (int i = 0; i < 3; i++) {
      list.add(Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1));
    }
    return list;
  }
}
