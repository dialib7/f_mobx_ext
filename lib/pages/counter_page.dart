import 'package:f_mobx/store/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter and Mobx')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(height: 10),
            Observer(
              builder: (_) => Text(
                '${counter.count}',
                style: TextStyle(fontSize: 42.0),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100, //me
                  child: ElevatedButton.icon(
                      icon: Icon(Icons.add),
                      label: Text('Add'),
                      onPressed: counter.increment),
                ),
                //Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                SizedBox(width: 20),
                SizedBox(
                  width: 100, //me
                  child: OutlinedButton.icon(
                      icon: Icon(Icons.remove),
                      label: Text('Sub'),
                      onPressed: counter.decrement),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100, //me
                  child: ElevatedButton.icon(
                      icon: Icon(Icons.restart_alt),
                      label: Text('Reset'),
                      onPressed: counter.reset),
                ),
                //Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                SizedBox(width: 20),
                SizedBox(
                  width: 100, //me
                  child: OutlinedButton.icon(
                      //icon: Image.asset("assets/dice.png"),
                      icon: Icon(Icons.security_rounded),
                      label: Text('PRNG'),
                      onPressed: counter.random),
                ),
              ],
            )
          ],
        )));
  }
}
