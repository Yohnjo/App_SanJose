import 'package:appsjo/widgets/appBar.dart';
import 'package:flutter/material.dart';

class paginaMovilidad extends StatefulWidget {
  paginaMovilidad({Key? key}) : super(key: key);

  @override
  _paginaMovilidadState createState() => _paginaMovilidadState();
}

class _paginaMovilidadState extends State<paginaMovilidad>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(appBar: appBar('Movilidad'));
  }

  // Este booleano permite que la página se mantenga en ejecución en segundo plano.
  @override
  bool get wantKeepAlive => true;
}
