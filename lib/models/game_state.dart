import 'dart:convert';
import 'package:http/http.dart' as http;

class GameState {
  final String gameId;
  final String currentPlayerId;

  GameState(this.gameId, this.currentPlayerId);

  Map<String, dynamic> toJson() {
    return {'gameId': gameId, 'currentPlayerId': currentPlayerId};
  }

  Future<void> save(String url) async {
    var response =
        await http.post(Uri.parse(url), headers: {"Content-Type": "application/json"}, body: json.encode(toJson()));
    if (response.statusCode != 200) {
      throw Exception('Failed to save game state');
    }
  }
}
