# Project file structure

## GPT Prompt

Tell me how to organize the dart files under the lib folder in our flutter project.  Name each file and folder

## GPT Completion

To keep your Flutter project organized, especially when dealing with multiple games and shared components, it's crucial to structure your `lib` folder in a clear and logical manner. Below is a suggested organization for your Flutter project that includes the various games and shared functionalities.

### Directory Structure for `lib` Folder

```
/lib
|-- /models
|   |-- player.dart
|   |-- game_state.dart
|   |-- card.dart
|
|-- /views
|   |-- /common
|   |   |-- reusable_card_widget.dart
|   |   |-- game_board_widget.dart
|   |   |-- player_stats_widget.dart
|   |-- /gridiron_master
|   |   |-- gridiron_master_screen.dart
|   |   |-- gridiron_master_gameboard.dart
|   |-- /field_command
|   |   |-- field_command_screen.dart
|   |   |-- field_command_gameboard.dart
|   |-- /tactical_gridiron
|   |   |-- tactical_gridiron_screen.dart
|   |   |-- tactical_gridiron_grid.dart
|   |-- main_menu.dart
|
|-- /controllers
|   |-- game_controller.dart
|   |-- deck_manager.dart
|   |-- network_manager.dart
|
|-- /utils
|   |-- constants.dart
|   |-- validators.dart
|   |-- animations.dart
|
|-- /services
|   |-- api_service.dart
|   |-- data_persistence_service.dart
|
|-- main.dart
```

### File and Folder Descriptions

- **/models**: Contains data models used throughout the application.
  - `player.dart` - Defines the player model including attributes like speed, strength, etc.
  - `game_state.dart` - Manages the state of the current game, including scores and player positions.
  - `card.dart` - Describes a card model with properties for different card types and actions.

- **/views**: Houses all UI components split by common components and game-specific views.
  - `/common` - Contains reusable widgets that can be utilized across different parts of the app.
    - `reusable_card_widget.dart` - A widget for displaying a card.
    - `game_board_widget.dart` - Generic game board used in games where applicable.
    - `player_stats_widget.dart` - Displays player statistics on the UI.
  - `/gridiron_master` - Specific UI components for the Gridiron Master game.
  - `/field_command` - UI components specific to Field Command.
  - `/tactical_gridiron` - UI components for Tactical Gridiron.
  - `main_menu.dart` - The main menu screen for selecting which game to play.

- **/controllers**: Includes logic to manage app behavior.
  - `game_controller.dart` - Central controller to manage gameplay logic.
  - `deck_manager.dart` - Manages card decks, shuffling, and distribution.
  - `network_manager.dart` - Handles all networking activities for multiplayer games.

- **/utils**: Utility classes and functions.
  - `constants.dart` - Defines constants used throughout the app.
  - `validators.dart` - Provides utility functions for validating moves and inputs.
  - `animations.dart` - Centralizes animations used in the app.

- **/services**: Services for handling backend communication and data persistence.
  - `api_service.dart` - Manages all API calls.
  - `data_persistence_service.dart` - Manages saving and loading game states or player profiles.

- **main.dart**: The entry point of the application, setting up the MaterialApp and initial routes.

This structure supports scalability, making it easier to manage, understand, and update your application as it grows or as new features are added. Each component is placed logically to facilitate teamwork and potential debugging, reflecting good practices in Flutter app development.