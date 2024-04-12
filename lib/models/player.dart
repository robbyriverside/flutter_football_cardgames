class Player {
  final String id;
  final String name;
  final int speed;
  final int strength;
  final String role; // New field for player role
  final int xPosition; // New for grid positioning
  final int yPosition; // New for grid positioning

  Player(this.id, this.name, this.speed, this.strength, this.role, this.xPosition, this.yPosition);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'speed': speed,
      'strength': strength,
      'role': role,
      'xPosition': xPosition,
      'yPosition': yPosition
    };
  }

  Player.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        speed = json['speed'],
        strength = json['strength'],
        role = json['role'],
        xPosition = json['xPosition'],
        yPosition = json['yPosition'];
}
