import 'package:flutter/material.dart';

void main() {
  runApp(KnitDesigner());
}

class KnitDesigner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knit Designer',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PatternEditor(title: 'Pattern Editor'),
    );
  }
}

class PatternEditor extends StatefulWidget {
  PatternEditor({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PatternEditorState createState() => _PatternEditorState();
}

class _PatternEditorState extends State<PatternEditor> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Row _createRow(int count) {
    List<Widget> _stiches = new List<Widget>();
    for (int i = 0; i < count; i++) {
      _stiches.add(new Card(
          color: Colors.grey,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          borderOnForeground: true,
          child: Container(
            width: 20,
            height: 20,
          )));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _stiches,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _createRow(20),
            _createRow(20),
            _createRow(20),
            _createRow(20),
            _createRow(20),
            _createRow(20),
            _createRow(20),
            _createRow(20),
            _createRow(20),
            _createRow(20),
            Text('Hello editor'),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
