class ProdutoModel {
  int id;
  String nome;
  String preco;
  String descricao;
  String imagem;
  int avaliacao;

  ProdutoModel(this.id, this.nome, this.preco, this.descricao, this.imagem,
      this.avaliacao);

  factory ProdutoModel.fromJson(dynamic json) {
    return ProdutoModel(
      json['id'] as int,
      json["attributes"]['nome'] as String,
      json["attributes"]["preco"] as String,
      json["attributes"]["descricao"] as String,
      json["attributes"]["imagem"]["data"]["formats"]["thumbnail"]["url"]
          as String,
      json['attributes']["avaliacao"] as int,
    );
  }
}
