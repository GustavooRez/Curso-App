class Cliente{
  String nome;
  String cpf;

  Cliente({this.nome, this.cpf});
}

//////////////////////////////////


class Produto{
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto({this.codigo, this.nome, this.preco, this.desconto});

  double get precoComDesconto{
    return(1 - desconto) * preco;
  }
}

////////////////////////////

class VendaItem{
  Produto produto;
  int quantidade;
  double _preco;

  VendaItem({this.produto, this.quantidade = 1});

  double get preco{
    if(produto != null && _preco == null){
      _preco = produto.precoComDesconto;
    }
    return _preco;
  }

  void set preco(double novoPreco){
    if(novoPreco > 0){
      _preco = novoPreco;
    }
  }
}

////////////////////////

class Venda{
  Cliente cliente;
  List<VendaItem> itens;

  Venda({this.cliente, this.itens = const []});

  double get valorTotal{
    return itens.map((item) => item.preco * item.quantidade)
    .reduce((t,a) => t + a);
  }
}