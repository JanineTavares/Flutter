import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  final String title;

  const Home({Key? key, required this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget _rowOne(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          color: Colors.purple,
          child: const FlutterLogo(size: 50.0),
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.green,
          child: const FlutterLogo(size: 50.0),
        ),
      ],
    );
  }

  Widget _rowTwo() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          color: Colors.yellow,
          child: const FlutterLogo(size: 50.0),
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.red,
          child: const FlutterLogo(size: 50.0),
        ),
      ],
    );
  }

  Widget _rowThree() {
    return Row(
      children: [
        Text('aaaaaa'),
        Text('bbbbbb'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Exemplo Row Column'),),
        body: Column(
          children: [
            // SizedBox(height: 100,), //gambiarra...
            Padding(
              padding: EdgeInsets.all(50.0),
              child: _rowOne(context),
            ),
            _rowTwo(),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: _rowThree(),
            ),
          ],
        )
    );
  }

// Row e Column aninhados
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(title: const Text('Exemplo Row Column'),),
//       body: Column(
//         children: [
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.purple,
//             child: const FlutterLogo(size: 50.0),
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.green,
//             child: const FlutterLogo(size: 50.0),
//           ),
//           Row(
//             children: [
//               Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.amber,
//                 child: const FlutterLogo(size: 50.0),
//               ),
//               Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.red,
//                 child: const FlutterLogo(size: 50.0),
//               )
//             ],
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.green,
//             child: const FlutterLogo(size: 50.0),
//           ),
//           Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                   flex: 1,
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.amber,
//                     child: const FlutterLogo(size: 50.0),
//                 )
//               ),
//               Expanded(
//                   flex: 1,
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.red,
//                     child: const FlutterLogo(size: 50.0),
//                   )
//               ),
//             ],
//           ),
//         ],
//       )
//   );
// }

// Row ou Column com Container MainAxisAlignment e Cross... double.infinity
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(title: const Text('Exemplo Row Column'),),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         // crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 50,
//             color: Colors.purple,
//             child: const FlutterLogo(size: 50.0),
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.green,
//             child: const FlutterLogo(size: 50.0),
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.yellow,
//             child: const FlutterLogo(size: 50.0),
//           )
//         ],
//       )
//   );
// }

// Com Stack Image.network e Padding
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       appBar: AppBar(title: const Text('Exemplo Row Column'),),
//       body: Stack(
//         children: [
//           Image.network('https://img.ibxk.com.br/2018/04/09/09143244644188.jpg?w=1120&h=420&mode=crop&scale=both'),
//           Padding(
//             padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
//             child: Text('iOS e Andriod in love....'),
//           )
//         ],
//       )
//   );
// }

//Com Stack align e positioned
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: const Text('Exemplo Row Column'),),
//     body: Stack(
//       children: [
//         Container(
//           color: Colors.yellow,
//           width: 300,
//           height: 300,
//         ),
//         Align(
//           alignment: Alignment.bottomLeft,
//           child: Container(
//             color: Colors.green,
//             width: 200,
//             height: 200,
//           ),
//         ),
//         Positioned(
//           right: 40.0,
//           top: 40.0,
//           child: Container(
//             color: Colors.orange,
//             width: 100,
//             height: 100,
//           ),
//         ),
//       ],
//     )
//   );
// }

// row e column com expanded flex
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: const Text('Exemplo Row Column'),),
//     body: Row(
//       children: [
//         // ignore: prefer_const_literals_to_create_immutables
//         Expanded(
//             flex: 3,
//             child: Container(
//               color: Colors.orange,
//             )
//         ),
//         Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.yellow,
//             )
//         ),
//       ],
//     ),
//   );
// }

// row e column com expanded
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: const Text('Exemplo Row Column'),),
//     body: Row(
//       children: [
//         // ignore: prefer_const_literals_to_create_immutables
//         const Expanded(child: Icon(Icons.home, size: 50.0,)),
//         const Expanded(child: Icon(Icons.home, size: 50.0,)),
//         const Expanded(child: Icon(Icons.home, size: 50.0,)),
//         const Expanded(child: Icon(Icons.home, size: 50.0,)),
//       ],
//     ),
//   );
// }

// exemplo column
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: const Text('Exemplo Row Column'),),
//     body: Column(
//       children: [
//         // ignore: prefer_const_literals_to_create_immutables
//         const Icon(Icons.home, size: 50.0,),
//         const Icon(Icons.home, size: 50.0,),
//         const Icon(Icons.home, size: 50.0,),
//         const Icon(Icons.home, size: 50.0,),
//       ],
//     ),
//   );
// }

// exemplo row
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: const Text('Exemplo Row Column'),),
//     body: Row(
//       children: [
//         // ignore: prefer_const_literals_to_create_immutables
//         const Icon(Icons.home, size: 50.0,),
//         const Icon(Icons.home, size: 50.0,),
//         const Icon(Icons.home, size: 50.0,),
//         const Icon(Icons.home, size: 50.0,),
//       ],
//     ),
//   );
// }

}