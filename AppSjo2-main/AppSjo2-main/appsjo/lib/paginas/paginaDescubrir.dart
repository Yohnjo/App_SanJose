import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class paginaDescubrir extends StatefulWidget {
  paginaDescubrir({Key? key}) : super(key: key);

  @override
  _paginaDescubrirState createState() => _paginaDescubrirState();
}

class _paginaDescubrirState extends State<paginaDescubrir>
    with AutomaticKeepAliveClientMixin {
  List<Widget> tabs = [
    Tab(child: Row(children: [Icon(Icons.museum), Text('MUSEOS')])),
    Tab(child: Row(children: [Icon(Icons.home_filled), Text('IGLESIAS')])),
    Tab(child: Row(children: [Icon(Icons.park), Text('PARQUES')])),
    Tab(child: Row(children: [Icon(Icons.nature_people), Text('BOULEVARES')])),
    Tab(
        child:
            Row(children: [Icon(Icons.account_balance), Text('PATRIMONIOS')])),
    Tab(child: Row(children: [Icon(Icons.person), Text('MONUMENTOS')])),
    Tab(
        child: Row(
            children: [Icon(Icons.store_mall_directory), Text('MERCADOS')])),
    Tab(child: Row(children: [Icon(Icons.color_lens), Text('ARTE PÚBLICO')])),
    Tab(child: Row(children: [Icon(Icons.photo_filter), Text('GALERÍAS')])),
    Tab(child: Row(children: [Icon(Icons.theater_comedy), Text('TEATROS')]))
  ];

  List<Widget> cuerpoTabs = [
    Icon(Icons.museum),
    Icon(Icons.home_filled),
    Icon(Icons.park),
    Icon(Icons.nature_people),
    Icon(Icons.account_balance),
    Icon(Icons.person),
    Icon(Icons.store_mall_directory),
    Icon(Icons.color_lens),
    Icon(Icons.photo_filter),
    Icon(Icons.theater_comedy),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.lightBlue.shade900,
                statusBarIconBrightness: Brightness.light),
            title: Text('Descubrir San José'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.grey.shade800,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.grey.shade800,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.my_location),
                color: Colors.grey.shade800,
              )
            ],
            bottom: TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey.shade700,
              isScrollable: true,
              tabs: tabs,
            ),
          ),
          body: TabBarView(children: cuerpoTabs)),
    );
  }

  // Este booleano permite que la página se mantenga en ejecución en segundo plano.
  @override
  bool get wantKeepAlive => true;
}
