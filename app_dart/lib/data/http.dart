import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/model.dart';
import '../model/produto_model.dart';

Future<List<CategoriasModel>> listaCategoria() async {
  List<CategoriasModel> categorias = [];

  final Uri url =
      Uri.http('192.168.205.210', '/api/categorias', {'populate': '*'});
  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var listaResponse = json.decode(response.body);
      print(listaResponse);
      for (var categoria in listaResponse['data']) {
        CategoriasModel p = CategoriasModel.fromJson(categoria);
        categorias.add(p);
      }

      return categorias;
    } else {
      //print('Request failed with status: ${response.statusCode}.');
      return categorias;
    }
  } catch (erro) {
    print(erro);
  }
  return categorias;
}

Future<List<ProdutoModel>> listaProdutos() async {
  List<ProdutoModel> produtos = [];

  final Uri url =
      Uri.http('192.168.205.210', '/api/produtos', {'populate': '*'});
  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var listaResponse = json.decode(response.body);

      for (var produto in listaResponse['data']) {
        ProdutoModel p = ProdutoModel.fromJson(produto);
        produtos.add(p);
      }

      return produtos;
    } else {
      //print('Request failed with status: ${response.statusCode}.');
      return produtos;
    }
  } catch (erro) {
    print(erro);
  }
  return produtos;
}
