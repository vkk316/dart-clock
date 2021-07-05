import 'state.dart';

class ClockProvider {
  final ClockState? initState;
  ClockProvider({this.initState}) : _state = initState;
  ClockState? _state; // mutaBLE ไปก่อน

  ClockState add(String event) {
    if (event == 'set') {
      _state = SetState(hh: _state!.hh, mm: _state!.mm);
    } else if (event == 'inc') {
      _state = IncreseState(hh: _state!.hh! + 1, mm: _state!.mm);
    }
    return _state!;
  }
}
