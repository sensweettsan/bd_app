import 'package:app_forum/model/categorias_model.dart';
import 'package:app_forum/data/http.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<CategoriasModel>> _categorias;

  @override
  void initState() {
    super.initState();
    _categorias = listaCategoria();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Header(),
          FutureBuilder(
            future: _categorias,
            builder: (context, snapshot) {
              var dados = snapshot.data;
              if (snapshot.hasData) {
                return SizedBox(
                  height: 90,
                  child: ListView.builder(
                      itemCount: dados!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Image.network(
                                  'http://192.168.205.210:1337${dados[index].img}',
                                  width: 65,
                                  height: 65,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(dados[index].categoria),
                                    Text('${dados[index].total} Produtos'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
