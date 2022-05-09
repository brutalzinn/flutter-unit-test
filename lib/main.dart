import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de time range',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculadora de time range'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    List<TimeOfDay> listTimes = [];
    TimeOfDay selectedTime = TimeOfDay.now();

_selectTime(BuildContext context) async {
      final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
         builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  alwaysUse24HourFormat: true),
              child: child!);
        }

      );
      if(timeOfDay != null)
        {
          setState(() {
            // selectedTime = timeOfDay;
            listTimes.add(timeOfDay);
          });
        }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  ListView.builder(
          itemCount: listTimes.length,
          shrinkWrap: true,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title:Text("Teste: ${listTimes[index].hour} ${listTimes[index].minute}")
            );
        }
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _selectTime(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

}
