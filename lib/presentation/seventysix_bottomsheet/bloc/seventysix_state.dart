// ignore_for_file: must_be_immutable

part of 'seventysix_bloc.dart';

/// Represents the state of Seventysix in the application.
class SeventysixState extends Equatable {
  SeventysixState({
    this.selectedDatesFromCalendar1,
    this.seventysixModelObj,
  });

  SeventysixModel? seventysixModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        seventysixModelObj,
      ];

  SeventysixState copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    SeventysixModel? seventysixModelObj,
  }) {
    return SeventysixState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      seventysixModelObj: seventysixModelObj ?? this.seventysixModelObj,
    );
  }
}
