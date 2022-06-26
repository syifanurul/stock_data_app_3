import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_data_app_3/models/stock_list_model.dart';
import 'detail_screen.dart';
import 'blocs/blocs.dart';
import 'widgets/filter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(),
      home: home_screen(), // Panggil DetailScreen di sini
    );
  }
}

class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      iconSize: 20,
                      color: Color.fromARGB(255, 214, 214, 214),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home_screen(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 225,
                    child: const Text(
                      'Overview',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: IconButton(
                      icon: const Icon(Icons.filter_alt_outlined),
                      iconSize: 30,
                      color: const Color.fromARGB(255, 214, 214, 214),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return FilterWidget();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Color.fromARGB(255, 214, 214, 214),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              height: 650,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 140,
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '[Kode Saham]',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 148, 255),
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '[Nama Saham]',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '[Value]',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '[Difference]',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' (',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '[1]',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '%)',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'IDR',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 196, 196, 196),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 196, 196, 196),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: Icon(Icons.arrow_downward_outlined),
                            iconSize: 20,
                            color: Color.fromARGB(255, 214, 214, 214),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detail_screen()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
