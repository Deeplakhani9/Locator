import 'package:flutter/material.dart';
import 'package:parmishan/des.dart';
import 'package:parmishan/map.dart';

import 'globel.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => myapp(),
        '1': (context) => des(),
        '2': (context) => webpage(),
      },
    ),
  );
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Locator"),
        ),
        body: ListView.builder(
          itemCount: Globel.info.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('1', arguments: Globel.info[i]);
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              NetworkImage('${Globel.info[i]['ceoimeg']}')),
                      title: Text("${Globel.info[i]['Companyname']}"),
                      subtitle: Text("${Globel.info[i]['name']}"),
                      trailing: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          '${Globel.info[i]['logo']}',
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
