import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'App',
  home: CorpoTutorial(),
));

class CorpoTutorial extends StatelessWidget{

  final lista = ['Albania', 'Andorra', 'Armenia', 'Austria',
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white,),
          onPressed: null,
        ),
        title: Text('Documentos Virtuais', ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index){
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 200, vertical: 10),
            child: ListTile(
              title: Container(
                child: Text(lista[index]),
              ),
            ),
          );
        }
      ),
    );
  }
}