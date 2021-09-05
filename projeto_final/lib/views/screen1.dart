import 'package:flutter/material.dart';
import 'package:projeto_final/model/characters.dart';
import 'package:projeto_final/service/charactersservice.dart';

class ScreenCharacters extends StatefulWidget {
  const ScreenCharacters({Key? key}) : super(key: key);

  @override
  _ScreenCharactersState createState() => _ScreenCharactersState();
}

class _ScreenCharactersState extends State<ScreenCharacters> {

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
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child:
              _rowListRovers()
            // ListView.builder(
            //     itemCount: _listCharacters!.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         tileColor: Colors.indigo,
            //         title: Text('${_listCharacters!.elementAt(index)!.family}'),
            //         subtitle: Text('${_listCharacters!.elementAt(index)!.fullName}'),
            //         leading: CircleAvatar(backgroundImage: NetworkImage('${_listCharacters!.elementAt(index)!.imageUrl}')),
            //         trailing: CircleAvatar(backgroundColor: Colors.blue),
            //
            //       );
            //     }
            //
            // ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _getAllCharacters(context);
        },
        tooltip: 'Buscar',
        child: const Icon(Icons.search),
      ),
    );
  }
  _getAllCharacters(BuildContext context) async {
    final charactersService = CharacterService();

    setState(() {
      _progress = true;
    });
    _listCharacters = await charactersService.getCharacters();

    setState(() {
      _progress = false;
    });
  }

  _rowListRovers() {
    if (_listCharacters == null) {
      return Text('Sem personagens');
    }
    return ListView.builder(
        itemCount: _listCharacters!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${_listCharacters!.elementAt(index)!.family}'),
            subtitle: Text('${_listCharacters!.elementAt(index)!.fullName}'),
            leading: CircleAvatar(backgroundImage: NetworkImage('${_listCharacters!.elementAt(index)!.imageUrl}')),
            trailing: CircleAvatar(backgroundColor: Colors.blue),

          );
        }

    );
  }
}














