// ignore_for_file: must_be_immutable

part of 'fortyone_bloc.dart';

/// Represents the state of Fortyone in the application.
class FortyoneState extends Equatable {
  FortyoneState({
    this.searchController,
    this.otpController,
    this.fortyoneModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? otpController;

  FortyoneModel? fortyoneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        otpController,
        fortyoneModelObj,
      ];

  FortyoneState copyWith({
    TextEditingController? searchController,
    TextEditingController? otpController,
    FortyoneModel? fortyoneModelObj,
  }) {
    return FortyoneState(
      searchController: searchController ?? this.searchController,
      otpController: otpController ?? this.otpController,
      fortyoneModelObj: fortyoneModelObj ?? this.fortyoneModelObj,
    );
  }
}
