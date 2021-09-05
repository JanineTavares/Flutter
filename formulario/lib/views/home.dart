import 'package:formulario/model/model.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  double? _imc = 0.0;

  _rowIcon() {
    return Icon(Icons.people, size: 150,);
  }

  _rowName() {
    return TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(hintText: 'Digite o seu nome'),
      maxLength: 50,
      validator: (value) {
        if(value!.isEmpty) {
          return 'Digite um valor válido!';
        }
        return null;
      },
    );
  }

  _rowWeight() {
    return TextFormField(
      controller: _weightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(hintText: 'Digite o seu peso'),
      maxLength: 5,
      validator: (value) {
        if(value!.length < 2) {
          return 'Digite um peso válido!';
        }
        return null;
      },
    );
  }

  _rowHeight() {
    return TextFormField(
      controller: _heightController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(hintText: 'Digite a sua altura'),
      maxLength: 5,
      validator: (value) {
        if(value!.length < 2) {
          return 'Digite uma altura válida!';
        }
        return null;
      },
    );
  }

  _formUI(BuildContext context) {
    return Column(
      children: [
        _rowIcon(),
        _rowName(),
        _rowWeight(),
        _rowHeight(),
      ],
    );
  }

  _rowForm(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: _formUI(context),
    );
  }

  _rowIMC() {
    return Row(
      children: [
        Text('Seu IMC -> $_imc', style: TextStyle(fontSize: 20.0),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo formulário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _rowForm(context),
            _rowIMC()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('clicou no FAB');
          _register(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  _register(BuildContext context) {
    print('validou: ${_formKey.currentState!.validate()}');
    if(_formKey.currentState!.validate()) {
      print('clicou em cadastrar');
      print('seu nome é: ${_nameController.text.toString()}');
      print('seu peso: ${_weightController.text.toString()}');
      print('sua altura: ${_heightController.text.toString()}');


      double? weight = double.tryParse(_weightController.text);
      double? height = double.tryParse(_heightController.text);

      final person = Person(name: _nameController.text, weight: weight, height: height);

      print('Resultado: ${person.toString()}');
      _sendSnackBar(person.toString());


      setState(() {
        _imc = person.calculateIMC();
        _resetFields();
      });

    } else {
      _sendSnackBar('Digite os campos corretamente!');
    }
  }//register

  _resetFields() {
    _formKey.currentState!.reset();

    Future.delayed(const Duration(seconds: 5), () async {
      setState(() {
        _imc = 0.0;
      });
    });
  }

  _sendSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

}
