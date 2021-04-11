import 'package:flutter/material.dart';
import 'package:my_notes/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      // Os parametros para o Builder
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(model.title),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Contador ${model.counter}"),
        ),
      ),

      // Apatir desse modelo que vai ser contruido a tela
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
