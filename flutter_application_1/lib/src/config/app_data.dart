import 'package:flutter_application_1/src/models/item_model.dart';

ItemModel maca = ItemModel(
  nome: 'Maçã',
  descricao: 'Maçã',
  preco: 5.5,
  unidadeMedida: 'kg',
  imagem: 'assets/imgs/frutas/apple.png'
);

ItemModel uva = ItemModel(
  nome: 'Uva',
  descricao: 'Uva',
  preco: 7.4,
  unidadeMedida: 'kg',
  imagem: 'assets/imgs/frutas/grape.png'
);

ItemModel goiaba = ItemModel(
  nome: 'Goiaba',
  descricao: 'Goiaba',
  preco: 11.5,
  unidadeMedida: 'kg',
  imagem: 'assets/imgs/frutas/guava.png'
);

ItemModel kiwi = ItemModel(
  nome: 'Kiwi',
  descricao: 'Kiwi',
  preco: 2.5,
  unidadeMedida: 'un',
  imagem: 'assets/imgs/frutas/kiwi.png'
);

ItemModel manga = ItemModel(
  nome: 'Manga',
  descricao: 'Manga',
  preco: 2.5,
  unidadeMedida: 'un',
  imagem: 'assets/imgs/frutas/mango.png'
);

ItemModel mamao = ItemModel(
  nome: 'Mamão',
  descricao: 'Mamão',
  preco: 8,
  unidadeMedida: 'kg',
  imagem: 'assets/imgs/frutas/papaya.png'
);

List<ItemModel> items = [
  maca,
  uva,
  goiaba,
  kiwi,
  manga,
  mamao,
];

List<String> categorias = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];