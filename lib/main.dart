
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyApp();

}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget tennantsText = Container(
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
    Widget tennantsText1 = Container(
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
    Widget tennantsText2 = Container(
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
    Widget tennantsText3 = Container(

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
              title: Text('Another Version...'),
            ),
            body: Column(
              children: [
                tennantsText,
                tennantsText1,
                tennantsText2,
                tennantsText1,
                Expanded(child: tennantsText3,),
                footerForMain,
              ],
            ),
          )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget myText() {
      return Padding(
        padding: EdgeInsets.all(28),
        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
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
          body: Column(
            children: <Widget> [
              TextButton(

                child: Text("Go back"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              myText(),
              myText(),
              myText(),
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