import 'package:appsjo/widgets/appBar.dart';
import 'package:flutter/material.dart';

class paginaAjustes extends StatefulWidget {
  paginaAjustes({Key? key}) : super(key: key);

  @override
  _paginaAjustesState createState() => _paginaAjustesState();
}

class _paginaAjustesState extends State<paginaAjustes>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(appBar: appBar('Ajustes'));
  }

  // Este booleano permite que la página se mantenga en ejecución en segundo plano.
  @override
  bool get wantKeepAlive => true;
}
