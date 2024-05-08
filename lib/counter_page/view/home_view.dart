import 'package:flutter/material.dart';
import 'package:mvp/counter_page/presenter/home_presenter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomePresenter _presenter;

  @override
  void initState() {
    _presenter = HomePresenter();
    super.initState();
  }

  IconData get _lockIcon => _presenter.counterIsLocked ? Icons.lock : Icons.lock_open;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: _presenter,
        builder: (_, __) => Scaffold(
            backgroundColor: const Color(0xFF282A36),
            appBar: AppBar(
                title: const Text("MVP Architecture", style: TextStyle(color: Colors.white)),
                backgroundColor: const Color(0xFF212121)),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(_presenter.counterValue.toString(), style: const TextStyle(fontSize: 36, color: Colors.white)),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    MaterialButton(
                        onPressed: _presenter.decrement, color: Colors.redAccent, child: const Icon(Icons.remove)),
                    const SizedBox(width: 8),
                    MaterialButton(
                        onPressed: _presenter.increment, color: Colors.lightGreen, child: const Icon(Icons.add))
                  ]),
                  const SizedBox(height: 8),
                  const Text("Lock/Unlock Counter", style: TextStyle(color: Colors.white)),
                  MaterialButton(onPressed: _presenter.changeLockCounter, color: Colors.white54, child: Icon(_lockIcon))
                ]),
            floatingActionButton: FloatingActionButton(
                onPressed: () => _presenter.goToColorPage(context),
                backgroundColor: Colors.white54,
                child: const Icon(Icons.navigate_next))));
  }
}
