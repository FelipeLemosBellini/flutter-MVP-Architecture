import 'package:flutter/material.dart';
import 'package:mvp/color_generator_page/presenter/color_generator_presenter.dart';

class ColorGeneratorView extends StatefulWidget {
  const ColorGeneratorView({super.key});

  @override
  State<ColorGeneratorView> createState() => _ColorGeneratorViewState();
}

class _ColorGeneratorViewState extends State<ColorGeneratorView> {
  late ColorGeneratorPresenter _presenter;

  @override
  void initState() {
    _presenter = ColorGeneratorPresenter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: _presenter,
        builder: (_, __) => Scaffold(
            backgroundColor: const Color(0xFF282A36),
            appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                title: const Text("MVP Architecture", style: TextStyle(color: Colors.white)),
                backgroundColor: const Color(0xFF212121)),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: _presenter.colors.length,
                      itemBuilder: (_, index) {
                        return AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            child: Container(
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                width: 10,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: _presenter.colors[index],
                                    borderRadius: const BorderRadius.all(Radius.circular(10)))));
                      }),
                ]),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white54,
                onPressed: () => _presenter.newColors(),
                child: const Icon(Icons.change_circle_outlined))));
  }
}
