import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/views/views.dart';
import 'package:projeto_final/model/model.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Character?>? _listCharacters;

  bool _progress = false;

  _rowProgress() {
    return _progress ? CircularProgressIndicator() : Container();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game of Thrones App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text('Game of Thrones é uma série de televisão norte-americana criada por David Benioff e D. B. Weiss, baseada na série de livros A Song of Ice and Fire de George R. R. Martin.Eleita como a melhor série de TV do século XXI em 2020, numa votação popular feita pela revista Digital Spy, Game of Thrones foi transmitida originalmente pelo canal HBO entre 17 de abril de 2011 a 19 de maio de 2019. No elenco principal estão Peter Dinklage, Nikolaj Coster-Waldau, Lena Headey, Emilia Clarke, Iain Glen, Michelle Fairley, Richard Madden, Kit Harington, Sophie Turner, Maisie Williams, Isaac Hempstead Wright e entre outros.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                TextButton.icon(
                icon: Icon(Icons.search),
                label: Text('Buscar Personagens'),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ScreenCharacters()));
                },
                ),

            ],
          ),
        ),
      ),
    );
  }
}
