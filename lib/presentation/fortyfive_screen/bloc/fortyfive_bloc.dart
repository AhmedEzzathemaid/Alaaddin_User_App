import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightyseven_item_model.dart';
import '../models/s18_item_model.dart';
import '../models/rectangle5_item_model.dart';
import '../models/productlist9_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/fortyfive_screen/models/fortyfive_model.dart';
part 'fortyfive_event.dart';
part 'fortyfive_state.dart';

/// A bloc that manages the state of a Fortyfive according to the event that is dispatched to it.
class FortyfiveBloc extends Bloc<FortyfiveEvent, FortyfiveState> {
  FortyfiveBloc(FortyfiveState initialState) : super(initialState) {
    on<FortyfiveInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<UpdateChipViewEvent>(_updateChipView);
    on<ChangeSwitch1Event>(_changeSwitch1);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<FortyfiveState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FortyfiveState> emit,
  ) {
    List<S18ItemModel> newList =
        List<S18ItemModel>.from(state.fortyfiveModelObj!.s18ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        fortyfiveModelObj:
            state.fortyfiveModelObj?.copyWith(s18ItemList: newList)));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<FortyfiveState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  List<EightysevenItemModel> fillEightysevenItemList() {
    return List.generate(2, (index) => EightysevenItemModel());
  }

  List<S18ItemModel> fillS18ItemList() {
    return List.generate(5, (index) => S18ItemModel());
  }

  List<Rectangle5ItemModel> fillRectangle5ItemList() {
    return [
      Rectangle5ItemModel(rectangle: ImageConstant.imgRectangle22418),
      Rectangle5ItemModel(rectangle: ImageConstant.imgRectangle22419)
    ];
  }

  List<Productlist9ItemModel> fillProductlist9ItemList() {
    return [
      Productlist9ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist9ItemModel(
          productImage: ImageConstant.imgRectangle224264,
          productTitle: "20%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER"),
      Productlist9ItemModel(
          productImage: ImageConstant.imgRectangle224263,
          productTitle: "30%",
          categoryTitle: "Bomber Jackets",
          price1: "30.0 YER",
          price2: "49.9YER")
    ];
  }

  _onInitialize(
    FortyfiveInitialEvent event,
    Emitter<FortyfiveState> emit,
  ) async {
    emit(state.copyWith(
      characteristicsController: TextEditingController(),
      ratingsreviewsController: TextEditingController(),
      sliderIndex: 0,
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
    ));
    emit(state.copyWith(
        fortyfiveModelObj: state.fortyfiveModelObj?.copyWith(
      eightysevenItemList: fillEightysevenItemList(),
      s18ItemList: fillS18ItemList(),
      rectangle5ItemList: fillRectangle5ItemList(),
      productlist9ItemList: fillProductlist9ItemList(),
    )));
  }
}
