import 'package:br/components/funcionarios_class.dart';
import 'package:br/ui/funcionarios_page.dart';
import 'package:flutter/material.dart';

class Funcionario extends StatefulWidget {
  @override
  _FuncionarioState createState() => _FuncionarioState();
}

class _FuncionarioState extends State<Funcionario> {
  List<Funcionarios_list> funcionarios_list = [];

  @override
  void initState() {
    Funcionarios_list funcionario_qqr_coisa = Funcionarios_list();
    funcionarios_list = funcionario_qqr_coisa.getallFuncionarios();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Funcionários',
          style: TextStyle(
            fontFamily: 'Comfortaa',
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: funcionarios_list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:16.0, bottom:1.0, right:16.0, left:16.0),
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    
                    child: Image.network(
                      funcionarios_list[index].image,

                      fit: BoxFit.cover,
                    ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[                      
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          funcionarios_list[index].name,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'Idade: ${funcionarios_list[index].idade.toString()} anos',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                  ),
                    ],
                  ),
                  
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Funcionario_Page(funcionario_pass: funcionarios_list[index])));
            },
          );
        },
      ),
    );
  }
}
