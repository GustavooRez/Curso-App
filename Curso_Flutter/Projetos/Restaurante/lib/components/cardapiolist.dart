
class Cardapio_list{
  final String id;
  final String title;
  final double price;
  var image;
  bool isveggie;

  Cardapio_list({
     this.id,
     this.title,
     this.price,
     this.image,
     this.isveggie,
  });


List<Cardapio_list> getallCardapio(){
  List<Cardapio_list> cardapio_list=[
        
        Cardapio_list(
    id : '1',
    title: 'Pizza',
    price: 25.00,
    image : 'https://i1.wp.com/multarte.com.br/wp-content/uploads/2019/03/pizza-png-fundo-transparente8.png?fit=1721%2C737&ssl=1',
    isveggie : false,
    ),

  Cardapio_list(
    id : '2',
    title: 'Hamburger',
    price: 13.00,
    image : 'https://www.dlf.pt/png/big/16/166529_hamburguer-png.png',
    isveggie  : true,
  ),
    Cardapio_list(
    id  : '3',
    title: 'Arroz',
    price: 28.00,
    image  : 'https://3.bp.blogspot.com/-mvGp-N3C5fE/WFGustD0wYI/AAAAAAAAAmo/FB46YzsYCvkMWzuzNz3ALGuqDD6h6IA5ACLcB/s1600/arroz.png',
    isveggie  : true,
 ),

  Cardapio_list(
    id  : '4',
    title: 'Feijoada',
    price: 35.00,
    image  : 'https://pluspng.com/img-png/png-feijoada-feijoada-grde-398.png',
    isveggie  : false,

 ),
      Cardapio_list(
    id  : '5',
    title: 'Vegetais',
    price: 15.00,
    image : 'https://compredocampo.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/e/cesta_de_vegetais_1.png',
    isveggie : true,
 ),

  Cardapio_list(
    id  :'6',
    title: 'Hamburger e Fritas',
    price: 30.00,
    image  : 'https://pngimage.net/wp-content/uploads/2018/05/comidas-png-3.png',
    isveggie  : false,
 ),

  Cardapio_list(
    id  : '7',
    title: 'Prato feito com Filé',
    price: 30.00,
    image  : 'https://pngimage.net/wp-content/uploads/2018/06/pratos-comidas-png-3.png',
    isveggie  : false,
  ),

    Cardapio_list(
    id  : '8',
    title: 'Lasanha',
    price: 38.00,
    image  : 'https://pngimage.net/wp-content/uploads/2018/06/lasanha-png-4.png',
    isveggie  : false,
  ),

    Cardapio_list(
    id  : '9',
    title: 'Escondidinho',
    price: 30.00,
    image  : 'https://pngimage.net/wp-content/uploads/2018/05/escondidinho-png.png',
    isveggie  : false,
  ),
    Cardapio_list(
    id  : '10',
    title: 'Purê',
    price: 10.00,
    image  : 'https://paladaresdaavo.com/wp-content/uploads/2019/10/pure-batata-e-cogumelos.png',
    isveggie  : true,
  ),
    Cardapio_list(
    id  : '11',
    title: 'Macarronada',
    price: 20.00,
    image  : 'https://2.bp.blogspot.com/-mFNfXg-CsF4/U106LZ0SDHI/AAAAAAAAML8/W8rOGUoFLxc/s1600/Spaghetti+(2).png',
    isveggie  : true,
  ),
      Cardapio_list(
    id  : '12',
    title: 'Batata Recheada',
    price: 10.00,
    image  : 'https://pngimage.net/wp-content/uploads/2018/05/batata-recheada-png-7.png',
    isveggie  : true,
  ),
      Cardapio_list(
    id  : '13',
    title: 'Carne de Porco',
    price: 30.00,
    image  : 'https://pngimage.net/wp-content/uploads/2018/05/carne-de-porco-png.png',
    isveggie  : false,
  ),
      Cardapio_list(
    id  : '14',
    title: 'Carne de Vaca',
    price: 30.00,
    image  : 'https://cdn.pixabay.com/photo/2016/11/11/22/07/beef-1817801_960_720.png',
    isveggie  : false,
  ),
      Cardapio_list(
    id  : '15',
    title: 'Filé de Frango',
    price: 30.00,
    image  : 'https://pngimage.net/wp-content/uploads/2018/06/file-de-frango-png-1.png',
    isveggie  : false,
  ),
      Cardapio_list(
    id  : '16',
    title: 'Bacon',
    price: 30.00,
    image  : 'https://i.dlpng.com/static/png/5425254-bacon-png-image-purepng-free-transparent-cc0-png-image-library-bacon-png-1826_1051_preview.png',
    isveggie  : false,
  ),
      Cardapio_list(
    id  : '17',
    title: 'Rabanada',
    price: 30.00,
    image  : 'https://padarianovaaurora.com.br/wp-content/uploads/2017/11/rabanadarecheada.png',
    isveggie  : true,
  ),
      Cardapio_list(
    id  : '18',
    title: 'Sorvete',
    price: 80.00,
    image  : 'https://imagensemoldes.com.br/wp-content/uploads/2020/04/Sorvete-PNG-1200x900.png',
    isveggie  : true,
  ),
      Cardapio_list(
    id  : '19',
    title: 'Açai',
    price: 10.00,
    image  : 'https://i.pinimg.com/originals/5b/62/0d/5b620dd61b830ddf7f795e4bb1cc0551.png',
    isveggie  : true,
  ),
        Cardapio_list(
    id  : '20',
    title: 'Picolé',
    price: 5.00,
    image  : 'https://static.wixstatic.com/media/d6615b_1a2196bc40b341329c784cd45c7b5bc0~mv2.png/v1/fill/w_506,h_760,al_c,q_95/d6615b_1a2196bc40b341329c784cd45c7b5bc0~mv2.webp',
    isveggie  : true,
  ),
  ];
    return cardapio_list;
}
}


  