import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('trabalhando com tabs'),
          bottom: TabBar(
            tabs: [
              // Text('Guia 1'),
              // Text('Guia 2'),
              Tab(icon: Icon(Icons.add),),
              Tab(icon: Icon(Icons.android),),
            ],
          ),
        ),
            body: TabBarView(
              children: [
                const Center(  // centralizar texto
                  child: Text('Hello'),
                  ),
                const Text('Hey'),
              ],
            )
      )
    );


  }
  //   return Scaffold(
  //     appBar: AppBar(title: Text('Exemplo MaterialApp TabBar'),),
  //     body: Column(
  //       children: [
  //         const Text("Letra A", style: TextStyle(backgroundColor: Colors.orange, fontSize: 28.0, fontWeight: FontWeight.bold),),
  //         const Text("Letra B", style: TextStyle(backgroundColor: Colors.orange, fontSize: 28.0, fontWeight: FontWeight.bold),),
  //         const Text("Letra C", style: TextStyle(backgroundColor: Colors.orange, fontSize: 28.0, fontWeight: FontWeight.bold),),
  //         TextButton(
  //           onPressed: () {
  //             showSnackBarComContainer(message: 'clicou no botão', context: context);
  //           },
  //           onLongPress: () {
  //             showSnackBarComCorDeFundo(message: 'clicou e segurou no botão', context: context, type: true);
  //           },
  //           child: Text('ola'),
  //         ),
  //       ],
  //     ),
  //
  //
  //   );
  // }
  //
  // void showSnackBarComContainer({required String message, required BuildContext context}) {
  //       ScaffoldMessenger.
  //       of(context).
  //       showSnackBar(
  //           SnackBar(
  //               content: Container(
  //                 color: Colors.blueAccent,
  //                 child: Text('olá'),)));
  // }
  //
  // void showSnackBarComCorDeFundo({required String message, required BuildContext context, bool type = false}) {
  //   ScaffoldMessenger.
  //   of(context).
  //   showSnackBar(
  //       SnackBar(
  //           backgroundColor: type ? Colors.red : Colors.green,
  //         content: Text('message'),
  //       )
  //   );
  // }
}
