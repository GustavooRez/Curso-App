class Data{
  int dia;
  int mes;
  int ano;

 /* Data(int dia, int mes, int ano){
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }
*/

  Data([this.dia = 01,this.mes = 1,this.ano = 2000]);
 //Construtores nomeados
  Data.com({this.dia = 1, this.mes = 2, this.ano = 1900});

  Data.ultimodiadoano(this.ano){
    dia = 31;
    mes = 12;
  }

  String obterDataFormatada(){
    return("$dia/$mes/$ano");
  }

  String toString(){
    return obterDataFormatada();
  }
}

main(){
  var dataAniversario = new Data(3, 10 , 2020);
  dataAniversario.dia = 3;
  dataAniversario.mes = 12;
  dataAniversario.ano = 2020;

 // print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");

  Data dataCompra = Data(3, 10, 2020);
  dataCompra.dia = 23;
  dataCompra.mes = 10;
  dataCompra.ano = 2022;

 // print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");


  String d1 = dataAniversario.obterDataFormatada();

  print("A data do aniversário é $d1");
  print("A data da compra é ${dataCompra.obterDataFormatada()}");

  print(new Data());
  print(Data.com(ano: 2020));
  
  var dataFinal = Data.com(dia: 12, mes: 7, ano:2020); 
  print(dataFinal);

  print(Data.ultimodiadoano(2023));

}