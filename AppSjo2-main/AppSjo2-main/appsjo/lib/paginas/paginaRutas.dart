import 'package:appsjo/widgets/appBar.dart';
import 'package:flutter/material.dart';

class paginaRutas extends StatefulWidget {
  paginaRutas({Key? key}) : super(key: key);

  @override
  _paginaRutasState createState() => _paginaRutasState();
}

class _paginaRutasState extends State<paginaRutas>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(appBar: appBar('Rutas'));
  }

  // Este booleano permite que la página se mantenga en ejecución en segundo plano.
  @override
  bool get wantKeepAlive => true;
}
