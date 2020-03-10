import 'package:nucleoid/nucleoid.dart';
import 'package:pixelsand/pixelsand.dart';

void main(List<String> args) async {
  logger();

  var server = Server(
    port: 8001,
    router: PixelSandRouter(),
  );

  await server.start(args);
}
