import '../Modelo/cliente.dart';

main(){
  var venda = Venda(
    cliente: Cliente(
      nome: 'Francisco',
      cpf:  '135.612.678-90'
      ),
    itens: <VendaItem>[
      VendaItem(
        quantidade: 10,
        produto: Produto(
          codigo: 1,
          nome: 'Caneta',
          preco: 5.89,
          desconto: 0.2 
          ) 
        ),
      VendaItem(
        quantidade: 3,
        produto: Produto(
          codigo: 123,
          nome: 'Caderno',
          preco: 10.89,
          desconto: 0.1 
          ) 
        ),
      VendaItem(
        quantidade: 100,
        produto: Produto(
          codigo: 100,
          nome: 'Borracha',
          preco: 1.00,
          desconto: 0.5 
          ) 
        ), 
    ]
  );


  print("O valor total da venda é: ${venda.valorTotal}");

  print("Nome do primeiro produto é: ${venda.itens[0].produto.nome} ");
  print("Nome do primeiro produto é: ${venda.cliente.cpf} ");

}