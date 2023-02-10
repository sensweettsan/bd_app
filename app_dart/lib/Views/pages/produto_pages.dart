import 'package:flutter/material.dart';
import '../../components/header.dart';
import '../../data/http.dart';
import '../../model/produto_model.dart';

class Produtos extends StatefulWidget {
  const Produtos({super.key});

  @override
  State<Produtos> createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  late Future<List<ProdutoModel>> _produtos;

  @override
  void initState() {
    super.initState();
    _produtos = listaProdutos();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Header(),
          FutureBuilder(
            future: _produtos,
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
                                  'http://192.168.205.210:1337${dados[index].imagem}',
                                  width: 65,
                                  height: 65,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(dados[index].nome),
                                    Text(dados[index].preco),
                                    Text(dados[index].descricao),
                                    //Text('${dados[index].preco} Produtos'),
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
