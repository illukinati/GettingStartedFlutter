import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

enum MyDialogAction { yes, no, maybe }

class MyAppState extends State<MyApp> {
  String _text = '';
  final TextEditingController _controller = new TextEditingController()
;
  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _onPressed(String value){
    print(_controller.text);
  }

  void _dialogResult(MyDialogAction value) {
    print('You selected $value');
    Navigator.pop(context);
  }

  // void _showAlert(String value) {
  //   if (value.isEmpty) return;

  //   AlertDialog dialog = new AlertDialog(
  //     content: new Text(
  //       value,
  //       style: new TextStyle(fontSize: 30.0),
  //     ),
  //     actions: <Widget>[
  //       new FlatButton(
  //         onPressed: () => _dialogResult(MyDialogAction.yes),
  //         child: new Text('Yes'),
  //       ),
  //       new FlatButton(
  //         onPressed: () => _dialogResult(MyDialogAction.no),
  //         child: new Text('No'),
  //       ),
  //       new FlatButton(
  //         onPressed: () => _dialogResult(MyDialogAction.maybe),
  //         child: new Text('Maybe'),
  //       ),
  //     ],
  //   );

  //   showDialog(context: context, child: dialog);
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Alert Dialog Demo')),
      body: new Container(
        padding: const EdgeInsets.all(32.0),
        child: new Center(
            child: new Column(
          children: <Widget>[
            new TextField(
              onChanged: (String value) => _onChange(value),
              controller: _controller,
              autocorrect: false,
              // maxLines: 3,
              maxLength: 15,
              decoration: new InputDecoration(
                icon: new Icon(
                  Icons.print
                ),
                // hintText:'Type something here',
                labelText: 'What is your name ?'
              ),
            ),
            new TextField(
              onChanged: (String value) => _onChange(value),
              controller: _controller,
              autocorrect: false,
              // maxLines: 3,
              maxLength: 15,
              decoration: new InputDecoration(
                icon: new Icon(
                  Icons.print
                ),
                // hintText:'Type something here',
                labelText: 'What is your name ?'
              ),
            ),
            new RaisedButton(
                // onPressed: () => _showAlert(_text),
                onPressed: () => _onPressed(_text),
                child: new Text('Alert Dialog')),
          ],
        )),
      ),
    );
  }
}
