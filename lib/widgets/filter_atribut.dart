import 'package:flutter/material.dart';

class FilterAtributWidget extends StatelessWidget {
  const FilterAtributWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10, right: 10.0, bottom: 5),
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.close),
                iconSize: 30,
                color: const Color.fromARGB(255, 214, 214, 214),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 10, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.auto_awesome_mosaic_outlined,
                      size: 30, color: Color.fromARGB(255, 20, 109, 199)),
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    child: const Text(
                      'Atribut Saham',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 20,
                right: 20.0,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'SEKTOR',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 5),
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 10,
                children: const [
                  Chip(
                    label: Text(
                      'Barang Baku',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 148, 255)),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Non-Primer',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Primer',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Energy',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 20,
                right: 20.0,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'INDEKS',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 5),
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 10,
                children: const [
                  Chip(
                    label: Text(
                      'LQ45',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 148, 255)),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'JII',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'IDX30',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'KOMPAS100',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 20,
                right: 20.0,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'BOARD',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 5),
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 10,
                children: const [
                  Chip(
                    label: Text(
                      'Reguler',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 148, 255)),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Tunai',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Negosiasi',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 20,
                right: 20.0,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'SECURITY TYPE',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 5),
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 10,
                children: const [
                  Chip(
                    label: Text(
                      'Ordinary',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 148, 255)),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Ordinary Pre Open',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Right',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Warrant',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Mutual Fung (EFT)',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Acceleration Board',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Structure Warrant',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 20,
                right: 20.0,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'PAPAN PERDAGANGAN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 5),
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 10,
                children: const [
                  Chip(
                    label: Text(
                      'Main',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 0, 148, 255)),
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Development',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                  Chip(
                    label: Text(
                      'Acceleration',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(245, 245, 245, 245),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 2,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.black,
                      backgroundColor: const Color.fromARGB(72, 105, 173, 210),
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    child: const Text('Atur Ulang'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 0, 148, 255),
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    child: const Text('Terapkan'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
