import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/products_item_model.dart';
import '../models/storeinfo6_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/sixty_page/models/sixty_model.dart';
part 'sixty_event.dart';
part 'sixty_state.dart';

/// A bloc that manages the state of a Sixty according to the event that is dispatched to it.
class SixtyBloc extends Bloc<SixtyEvent, SixtyState> {
  SixtyBloc(SixtyState initialState) : super(initialState) {
    on<SixtyInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    SixtyInitialEvent event,
    Emitter<SixtyState> emit,
  ) async {
    emit(state.copyWith(
        sixtyModelObj: state.sixtyModelObj?.copyWith(
      productsItemList: fillProductsItemList(),
      storeinfo6ItemList: fillStoreinfo6ItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SixtyState> emit,
  ) {
    List<ProductsItemModel> newList =
        List<ProductsItemModel>.from(state.sixtyModelObj!.productsItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        sixtyModelObj:
            state.sixtyModelObj?.copyWith(productsItemList: newList)));
  }

  List<ProductsItemModel> fillProductsItemList() {
    return List.generate(3, (index) => ProductsItemModel());
  }

  List<Storeinfo6ItemModel> fillStoreinfo6ItemList() {
    return [
      Storeinfo6ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.2 KM"),
      Storeinfo6ItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.9 KM"),
      Storeinfo6ItemModel(
          storeImage: ImageConstant.imgRectangle30,
          storeName: "El Nor Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.2 KM"),
      Storeinfo6ItemModel(
          storeImage: ImageConstant.imgRectangle31,
          storeName: "El Hoda Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.9 KM")
    ];
  }
}
