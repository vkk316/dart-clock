abstract class ClockState {
  ClockState({this.event, this.hh, this.mm});
  final String? event;
  final int? hh;
  final int? mm;
}

class OnState extends ClockState {
  OnState({hh, mm}) : super(hh: hh, mm: mm);

  @override
  String toString() {
    return 'this is on state';
  }
}

class IncreseState extends ClockState {
  IncreseState({hh, mm}) : super(hh: hh++, mm: mm);

  @override
  String toString() {
    return 'this is increse state';
  }
}

class SetState extends ClockState {
  SetState({hh, mm}) : super(hh: hh++, mm: mm);
}
