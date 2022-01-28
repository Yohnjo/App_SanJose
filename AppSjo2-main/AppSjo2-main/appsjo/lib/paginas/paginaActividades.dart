import 'package:appsjo/widgets/appBar.dart';
import 'package:flutter/material.dart';

class paginaActividades extends StatefulWidget {
  paginaActividades({Key? key}) : super(key: key);

  @override
  _paginaActividadesState createState() => _paginaActividadesState();
}

class _paginaActividadesState extends State<paginaActividades>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(appBar: appBar('Actividades'));
  }

  // Este booleano permite que la página se mantenga en ejecución en segundo plano.
  @override
  bool get wantKeepAlive => true;
}
