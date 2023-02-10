// ignore_for_file: file_names

class CategoriasModel {
  int id;
  String categoria;
  String img;
  int total;

  CategoriasModel(this.id, this.categoria, this.img, this.total);

  factory CategoriasModel.fromJson(dynamic json) {
    return CategoriasModel(
      json['id'] as int,
      json["attributes"]['categoria'] as String,
      json["attributes"]["imagem"]["data"]["attributes"]["formats"]["thumbnail"]
          ["url"] as String,
      json["attributes"]["total"] as int,
    );
  }
}
