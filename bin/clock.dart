import 'clock_provider.dart';
import 'state.dart';

void main(List<String> arguments) {
  var input = [
    'on 18 0',
    'set',
    'inc',
    'set',
    'inc',
    'set',
    'inc',
    'inc',
    'set'
  ];

  ClockProvider provider = ClockProvider(
      initState: OnState(
          hh: int.parse(input[0].split(' ')[1]),
          mm: int.parse(input[0].split(' ')[2])));
  input.removeAt(0);

  input.forEach((e) {
    print(provider.add(e).hh);
  });
}
