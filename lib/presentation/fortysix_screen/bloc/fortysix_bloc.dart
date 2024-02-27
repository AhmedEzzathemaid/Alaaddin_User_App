import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightyone_item_model.dart';
import '../models/s20_item_model.dart';
import '../models/rectangle6_item_model.dart';
import '../models/productlist10_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fortysix_screen/models/fortysix_model.dart';
part 'fortysix_event.dart';
part 'fortysix_state.dart';

/// A bloc that manages the state of a Fortysix according to the event that is dispatched to it.
class FortysixBloc extends Bloc<FortysixEvent, FortysixState> {
  FortysixBloc(FortysixState initialState) : super(initialState) {
    on<FortysixInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<UpdateChipViewEvent>(_updateChipView);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<FortysixState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FortysixState> emit,
  ) {
    List<S20ItemModel> newList =
        List<S20ItemModel>.from(state.fortysixModelObj!.s20ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        fortysixModelObj:
            state.fortysixModelObj?.copyWith(s20ItemList: newList)));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<FortysixState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  List<EightyoneItemModel> fillEightyoneItemList() {
    return List.generate(2, (index) => EightyoneItemModel());
  }

  List<S20ItemModel> fillS20ItemList() {
    return List.generate(5, (index) => S20ItemModel());
  }

  List<Rectangle6ItemModel> fillRectangle6ItemList() {
    return [
      Rectangle6ItemModel(rectangle: ImageConstant.imgRectangle22418),
      Rectangle6ItemModel(rectangle: ImageConstant.imgRectangle22419)
    ];
  }

  List<Productlist10ItemModel> fillProductlist10ItemList() {
    return [
      Productlist10ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist10ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist10ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  _onInitialize(
    FortysixInitialEvent event,
    Emitter<FortysixState> emit,
  ) async {
    emit(state.copyWith(
      characteristicsController: TextEditingController(),
      ratingsreviewsController: TextEditingController(),
      sliderIndex: 0,
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
    ));
    emit(state.copyWith(
        fortysixModelObj: state.fortysixModelObj?.copyWith(
      eightyoneItemList: fillEightyoneItemList(),
      s20ItemList: fillS20ItemList(),
      rectangle6ItemList: fillRectangle6ItemList(),
      productlist10ItemList: fillProductlist10ItemList(),
    )));
  }
}
