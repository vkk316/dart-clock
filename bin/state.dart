abstract class ClockState {
  ClockState({this.hh, this.mm});
  //final String event;
  final int? hh;
  final int? mm;
}

class OnState extends ClockState {
  OnState({hh, mm}) : super(hh: hh, mm: mm);
}
