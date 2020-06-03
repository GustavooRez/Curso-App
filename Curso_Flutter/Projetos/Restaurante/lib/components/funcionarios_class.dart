class Funcionarios_list{
  final String id;
  final String name;
  final int idade;
  final String cargo;
  final int tempo;
  var image;

  Funcionarios_list({
     this.id,
     this.name,
     this.idade,
     this.cargo,
     this.tempo,
     this.image,
  });


List<Funcionarios_list> getallFuncionarios(){
  List<Funcionarios_list> funcionario_list=[
        
      Funcionarios_list(
    id : '1',
    name: 'Henrique Fogaça',
    idade: 46,
    cargo: 'Chefe de Cozinha',
    tempo: 5,
    image : 'https://i.glbimg.com/og/ig/infoglobo/f/original/2019/11/07/henrique-fogaca.jpg',
    ),

    Funcionarios_list(
    id : '2',
    name: 'Érick Jacquin',
    idade: 55,
    cargo: 'Chefe de Cozinha',
    tempo: 3,
    image : 'https://statig3.akamaized.net/bancodeimagens/b8/vj/k5/b8vjk5hn0n59xeypm6foy00k5.jpg',
    ),

    Funcionarios_list(
    id : '3',
    name: 'Paola Carosella',
    idade: 47,
    cargo: 'Chefe de Cozinha',
    tempo: 7,
    image : 'https://statig0.akamaized.net/bancodeimagens/ac/er/pi/acerpivrh75czvyj8ypk7tofe.jpg',
    ),

    Funcionarios_list(
    id : '11',
    name: 'Pedro Augusto',
    idade: 31,
    cargo: 'Gerente',
    tempo: 2,
    image : 'https://guiachef.com.br/wp-content/uploads/2019/08/Caracteristica-gerente-restaurante.jpg',
    ),
        

    Funcionarios_list(
    id : '8',
    name: 'Thiago Thalas',
    idade: 31,
    cargo: 'Garçom',
    tempo: 2,
    image : 'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0RG000000q9pfnMAA/5a663e70e4b0b3aeb3b40b4e.jpg&w=710&h=462',
    ),
    Funcionarios_list(
    id : '9',
    name: 'Fabiola Souza',
    idade: 21,
    cargo: 'Garçonete',
    tempo: 3,
    image : 'https://vagatrabalho.com/wp-content/uploads/2018/12/garconete.jpg',
    ),

    Funcionarios_list(
    id : '10',
    name: 'Rodrigo Marques',
    idade: 31,
    cargo: 'Garçom',
    tempo: 2,
    image : 'https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia10029/16.treinamento-garcom-cursos-cpt.jpg',
    ),
    Funcionarios_list(
    id : '6',
    name: 'Lucas Montizs',
    idade: 24,
    cargo: 'Garçom',
    tempo: 1,
    image : 'https://img.freepik.com/fotos-gratis/garcom-alegre-segurando-a-taca-de-champanhe-da-a-voce_171337-5293.jpg?size=626&ext=jpg',
    ),
    Funcionarios_list(
    id : '7',
    name: 'Ingrid Campos',
    idade: 24,
    cargo: 'Garçonete',
    tempo: 1,
    image : 'https://www.pr.senac.br/cursos/cursos_images/p/introducao_aos_servicos_de_garcom_21641063.jpg',
    ),

    Funcionarios_list(
    id : '5',
    name: 'Ana Pietro',
    idade: 24,
    cargo: 'Garçonete',
    tempo: 2,
    image : 'https://img.olx.com.br/images/31/319010028525303.jpg',
    ),

    Funcionarios_list(
    id : '3',
    name: 'Gretchen',
    idade: 750,
    cargo: 'Garçonete',
    tempo: 5,
    image : 'https://www.bahianoticias.com.br/fotos/holofote_noticias/21185/IMAGEM_NOTICIA_5.jpg',
    ),



    
  ];
    return funcionario_list;
}
}