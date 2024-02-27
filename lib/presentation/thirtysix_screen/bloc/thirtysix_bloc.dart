import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productlist7_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/thirtysix_screen/models/thirtysix_model.dart';
part 'thirtysix_event.dart';
part 'thirtysix_state.dart';

/// A bloc that manages the state of a Thirtysix according to the event that is dispatched to it.
class ThirtysixBloc extends Bloc<ThirtysixEvent, ThirtysixState> {
  ThirtysixBloc(ThirtysixState initialState) : super(initialState) {
    on<ThirtysixInitialEvent>(_onInitialize);
  }

  List<Productlist7ItemModel> fillProductlist7ItemList() {
    return [
      Productlist7ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          bomberJackets: "Bomber Jackets",
          price: "49.0 YER"),
      Productlist7ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          bomberJackets: "Bomber Jackets")
    ];
  }

  _onInitialize(
    ThirtysixInitialEvent event,
    Emitter<ThirtysixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        thirtysixModelObj: state.thirtysixModelObj?.copyWith(
      productlist7ItemList: fillProductlist7ItemList(),
    )));
  }
}
