import 'package:flutter/material.dart';

import 'globel.dart';

class des extends StatefulWidget {
  const des({Key? key}) : super(key: key);

  @override
  State<des> createState() => _desState();
}

class _desState extends State<des> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("${data['Companyname']}"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 90,
                  child: Image.network("${data['logo']}"),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      '${data['Companyname']}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Container(
                      width: 70,
                      child: Image.network(
                        "${data['ceoimeg']}",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 6),
                    child: Text(
                      '${data['name']}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "-:Description:-",
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              width: 500,
              height: 150,
              child: Text('${data['description']}'),
            ),
          ),
          Text(
            "-:${data['Companyname']} Headquarters:-",
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              width: 500,
              height: 150,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('2', arguments: data);
                  setState(() {
                    Globel.val = '${data['web']}';
                  });
                },
                child: Text(
                  '${data['web']}',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
