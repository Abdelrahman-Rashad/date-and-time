import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime date = DateTime.now();
  final DateFormat dateformat = DateFormat('yyyy-MM-dd HH:mm');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dateformat.format(date)),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () async {
                final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(0),
                    lastDate: DateTime(2100));
                final time = await showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                setState(() {
                  this.date = DateTime(
                      date.year, date.month, date.day, time.hour, time.minute);
                });
                final snackBar = SnackBar(
                  content: Text(dateformat.format(date)),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              splashColor: Colors.amber,
              child: Container(
                child: Center(child: Text('Date')),
                height: 25.0,
                width: 70.0,
                color: Colors.green[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
