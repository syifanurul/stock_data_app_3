import 'package:flutter/material.dart';
import 'filter_atribut.dart';
import 'filter_rasio_keuangan.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10, right: 10.0, bottom: 5),
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: const Icon(Icons.close),
                  iconSize: 30,
                  color: const Color.fromARGB(255, 214, 214, 214),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10.0),
              child: const Text(
                'Pilih Tipe Penyaringan',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return const FilterAtributWidget();
                        },
                      );
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 25, left: 10, bottom: 10),
                      width: 145,
                      color: const Color.fromARGB(72, 105, 173, 210),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Icon(
                                Icons.auto_awesome_mosaic_outlined,
                                size: 30,
                                color: Color.fromARGB(255, 20, 109, 199)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Atribut',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Penyaringan berfokus pada atribut-atribut saham.',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return const FilterRasioKeuanganWidget();
                        },
                      );
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.only(top: 25, left: 10, bottom: 10),
                      width: 145,
                      color: const Color.fromARGB(71, 105, 210, 123),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Icon(Icons.attach_money,
                                size: 30,
                                color: Color.fromARGB(255, 20, 199, 32)),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Rasio Keuangan',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              'Penyaringan berdasarkan rasio keuangan.',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 20, left: 40, right: 40.0, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, bottom: 10),
                    width: 145,
                    color: const Color.fromARGB(71, 210, 158, 105),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Icon(Icons.stacked_bar_chart,
                              size: 30,
                              color: Color.fromARGB(255, 227, 137, 33)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Analisis Fundamental',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Penyaringan berfokus pada soliditas perusahaan.',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 25, left: 10, bottom: 10),
                    width: 145,
                    color: const Color.fromARGB(70, 105, 126, 210),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Icon(Icons.stacked_line_chart,
                              size: 30,
                              color: Color.fromARGB(255, 20, 74, 199)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Pergerakan Harga',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Penyaringan berdasarkan pergerakan harga saham.',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
