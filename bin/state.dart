abstract class ClockState {
  ClockState({this.hh, this.mm});
  //final String event;
  final int? hh;
  final int? mm;
}

class OnState extends ClockState {
  OnState({hh, mm}) : super(hh: hh, mm: mm);

  @override
  String toString() {
    return 'this is on state\n Time : $hh:$mm';
  }
}

class IncreseState extends ClockState {
  IncreseState({hh, mm}) : super(hh: hh, mm: mm);

  @override
  String toString() {
    return 'this is increse state\n Time : $hh:$mm';
  }
}

class SetState extends ClockState {
  SetState({hh, mm}) : super(hh: hh++, mm: mm);
  @override
  String toString() {
    return 'this is set state\n Time : $hh:$mm';
  }
}
