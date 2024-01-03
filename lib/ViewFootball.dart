import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Player {
  String Name;
  int Age;
 String cid;
  Player({required this.Name, required this.Age, required this.cid});

}
List<Player> players = [];
Future<void> getPlayers() async {
  try{
    final URL = Uri.https("finalmobileproject.000webhostapp.com","getbasketball.php");
    final response = await http.get(URL);
    players.clear();
    if(response.statusCode == 200){
      final jsonResponse = convert.jsonDecode(response.body);
      for(var row in jsonResponse){
        Player p = Player(
        row['name'],
        int.parse row['age']),
        int.parse(row['cid']),
        );
        players.add(p);
      }
    }
}catch(e){
print(e.toString());
}

}
class ViewFootballPlayers extends StatefulWidget {
  const ViewFootballPlayers({super.key});

  @override
  State<ViewFootballPlayers> createState() => _ViewFootballPlayersState();
}
class _ViewFootballPlayersState extends State<ViewFootballPlayers> {
  @override
  void initState() {
    super.initState();
    getPlayers();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: players.length,
      itemBuilder: (context, index){
        Text('x: ${players[index].Name}');
      },
    );
  }


}
