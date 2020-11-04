import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesquise"),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Search());
              }),
        ],
      ),
    );
  }
}

class Search extends SearchDelegate<String> {
  final servicos = [
    "Direito Humanos",
    "Corregedoria",
    "Feminicidio",
    "Denuncia",
    "Eleitoral",
    "Concursos",
    "Acompanhamento do caso"
  ];
  final servicosRe = [
    "Áreas de Atuação",
    "Cível",
    "Consumidor",
    "Criminal",
    "Cidadão",
    "Cartilhas",
    "Conheça o MP",
    "Fale Conosco",
    "Serviços",
    "Atos de Racionalização",
    "Falências"
        "Família",
    "Fundações",
    "Mandados de Segurança",
    "Processo Civil",
    "Registros Públicos",
    "Roteiros",
    "Termos de Cooperação",
    "Agendamento de Exames de DNA",
    "Conflitos de Atribuição",
    "Consumidor Vencedor",
    "Material de Apoio",
    "Roteiros",
    "Acervo",
    "Armas de Fogo",
    "Execução Criminal",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        child: Card(
          color: Palette.vermelhompsp,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final sugestaoList = query.isEmpty
        ? servicosRe
        : servicos.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.switch_account),
        title: RichText(
          text: TextSpan(
              text: sugestaoList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: sugestaoList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey)),
              ]),
        ),
      ),
      itemCount: sugestaoList.length,
    );
  }
}
