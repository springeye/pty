import 'package:pty/pty.dart';

void main() async {
  final pty = PseudoTerminal.start('bash', [],blocking: false);
  pty.init();

  pty.out.listen((data) {
    print(data);
  });
  pty.write('ls\n');
  print(await pty.exitCode);
}
