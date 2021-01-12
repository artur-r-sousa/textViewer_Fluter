
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyApp();

}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget tenantsText = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Mandamentos' ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Choose Tenant',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                MyStatefulWidget(),
              ],
            ),
          ),
          /*3*/
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute())
              );
            },
            child: Icon(
              Icons.circle,
              color: Colors.white,

            ),
          ),
        ],
      ),
    );
    Widget tenantsText1 = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Opção 2' ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Funcao ainda nao implementada, dev tomando cafe',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FloatingActionButton(
            onPressed: null,
            heroTag: null,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
    Widget tenantsText2 = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Opção 3' ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Funcao ainda nao implementada, dev tomando cafe',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FloatingActionButton(
            onPressed: null,
            heroTag: 'btn3',
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
    Widget tenantsText3 = Container(

      padding: const EdgeInsets.all(32),

      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Sair',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Volte logo!',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FloatingActionButton(
            onPressed: null,
            heroTag: 'btn4',
            child: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    Widget footerForMain = Container(
      padding: new EdgeInsets.only(top:20.0, bottom:20.0),
      alignment: Alignment.bottomCenter,
      color: Colors.amberAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text('AD AREA'),
        ],
      )
    );

    return MaterialApp(
      title: 'Tenants',
      home: Container(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Text Viewer'),
            ),
            body: Column(
              children: [
                tenantsText,
                tenantsText1,
                tenantsText2,
                Expanded(child: tenantsText3,),
                footerForMain,
              ],
            ),
          )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {

  final String exampleText = "Lorem Ipsum is simply dummy text of the printing "
      "and typesetting industry. Lorem Ipsum has been the industry's standard "
      "dummy text ever since the 1500s, when an unknown printer took a galley of"
      " type and scrambled it to make a type specimen book. It has survived not "
      "only five centuries, but also the leap into electronic typesetting, "
      "remaining essentially unchanged. It was popularised in the 1960s with the"
      " release of Letraset sheets containing Lorem Ipsum passages, and more "
      "recently with desktop publishing software like Aldus PageMaker including "
      "versions of Lorem Ipsum.";

  final String text2 = "NOITE OUTRA VEZ. A Pousada Marco do Percurso estava em silêncio, e era um silêncio em três"
  "partes. A parte mais óbvia era uma quietude oca e repleta de ecos, feita das coisas que faltavam. Se"
  "houvesse vento, ele sussurraria por entre as árvores, faria a pousada ranger em suas juntas e"
  "sopraria o silêncio estrada afora, como folhas de outono arrastadas. Se houvesse uma multidão,"
 "ou pelo menos um punhado de homens na pousada, eles encheriam o silêncio de conversa e riso,"
  "do burburinho e do clamor esperados de uma casa em que se bebe nas horas sombrias da noite."
  "Se houvesse música... Mas não, é claro que não havia música. Na verdade, não havia nenhuma"
  "dessas coisas e por isso o silêncio persistia."
 " Dentro da pousada, uma dupla de homens se encolhia num canto do bar. Os dois bebiam"
 " com serena determinação, evitando discussões sérias ou notícias inquietantes. Com isso,"
      "acrescentavam um silêncio pequeno e soturno ao maior e mais oco. Ele formava uma espécie de"
  "amálgama, um contraponto."
  "O terceiro silêncio não era fácil de notar. Se você passasse uma hora escutando, talvez"
  "começasse a senti-lo no assoalho de madeira sob os pés e nos barris toscos e lascados atrás do"
  "bar. Ele estava no peso da lareira de pedras negras, que conservava o calor de um fogo há muito"
  "extinto. Estava no lento vaivém de uma toalha de linho branco esfregada nos veios da madeira do"
  "bar. E estava nas mãos do homem ali postado, que polia um pedaço de mogno já reluzente à luz"
  "do lampião."
  "O homem tinha cabelos ruivos de verdade, vermelhos como a chama. Seus olhos eram"
  "escuros e distantes, e ele se movia com a segurança sutil de quem conhece muitas coisas."
  "Dele era a Pousada Marco do Percurso, como dele era também o terceiro silêncio. Era"
  "apropriado que assim fosse, pois esse era o maior silêncio dos três, englobando os outros dentro"
  "de si. Era profundo e amplo como o fim do outono. Pesado como um pedregulho alisado pelo"
  "rio. Era o som paciente ― som de flor colhida ― do homem que espera a morte.";

  final String text3 = 'example Text 3';
  final String text4 = 'example Text 4';
  @override
  Widget build(BuildContext context) {

    Widget myText(String someText) {
      return Padding(
        padding: EdgeInsets.all(28),
        child: Text(someText, style: new TextStyle(
          fontSize: 20
        ),),
      );
    }

    return MaterialApp(
      title: 'Tenants',
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tenant"),
            leading: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                IconData(61563, fontFamily: 'MaterialIcons'),
                color: Colors.white,
              ),
            ),
          ),
          body: ListView(
            children: [
              TextButton(

                child: Text("Go back"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              myText((() {
                if(_MyStatefulWidgetState.holder == 'One') {
                  return exampleText;
                } else if (_MyStatefulWidgetState.holder == 'Two') {
                  return text2;
                }
                else if (_MyStatefulWidgetState.holder == 'Three') {
                  return text3;
                }else if (_MyStatefulWidgetState.holder == 'Four') {
                  return text4;
                }
                return "anything goes";
              })())
            ],
          )
        )
      )
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';
  static String holder = '';

  void getDropDownItem(){
    setState(() {
      holder = dropdownValue ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          getDropDownItem();
        });
      },
      items: <String>['One', 'Two', 'Three', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}