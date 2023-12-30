import 'package:socket_io_client/src/socket.dart';
import 'socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  Socket get socketClient =>
      _socketClient; // Removed the unnecessary SocketClient alias

  void createRoom(String playername) {
    if (playername.isNotEmpty) {
      _socketClient.emit("createRoom", {'playername': playername});
    }
  }
}
