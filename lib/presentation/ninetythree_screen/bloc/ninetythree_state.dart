// ignore_for_file: must_be_immutable

part of 'ninetythree_bloc.dart';

/// Represents the state of Ninetythree in the application.
class NinetythreeState extends Equatable {
  NinetythreeState({
    this.cashondeliveryOneController,
    this.ninetythreeModelObj,
  });

  TextEditingController? cashondeliveryOneController;

  NinetythreeModel? ninetythreeModelObj;

  @override
  List<Object?> get props => [
        cashondeliveryOneController,
        ninetythreeModelObj,
      ];

  NinetythreeState copyWith({
    TextEditingController? cashondeliveryOneController,
    NinetythreeModel? ninetythreeModelObj,
  }) {
    return NinetythreeState(
      cashondeliveryOneController:
          cashondeliveryOneController ?? this.cashondeliveryOneController,
      ninetythreeModelObj: ninetythreeModelObj ?? this.ninetythreeModelObj,
    );
  }
}
