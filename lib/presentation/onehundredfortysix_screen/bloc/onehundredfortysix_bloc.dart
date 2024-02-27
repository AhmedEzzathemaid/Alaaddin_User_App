import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/storeinfo7_item_model.dart';
import 'package:abdelhamed_s_application9/presentation/onehundredfortysix_screen/models/onehundredfortysix_model.dart';
part 'onehundredfortysix_event.dart';
part 'onehundredfortysix_state.dart';

/// A bloc that manages the state of a Onehundredfortysix according to the event that is dispatched to it.
class OnehundredfortysixBloc
    extends Bloc<OnehundredfortysixEvent, OnehundredfortysixState> {
  OnehundredfortysixBloc(OnehundredfortysixState initialState)
      : super(initialState) {
    on<OnehundredfortysixInitialEvent>(_onInitialize);
  }

  List<Storeinfo7ItemModel> fillStoreinfo7ItemList() {
    return [
      Storeinfo7ItemModel(
          storeImage: ImageConstant.imgRectangle3052x52,
          elNorStore: "El Nor Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.2 KM",
          supportHeart: ImageConstant.imgSupportHeartBlack900),
      Storeinfo7ItemModel(
          storeImage: ImageConstant.imgRectangle3152x52,
          elNorStore: "El Hoda Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.9 KM",
          supportHeart: ImageConstant.imgSupportHeartRed600),
      Storeinfo7ItemModel(
          storeImage: ImageConstant.imgRectangle3052x52,
          elNorStore: "El Nor Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.2 KM",
          supportHeart: ImageConstant.imgSupportHeartBlack900),
      Storeinfo7ItemModel(
          storeImage: ImageConstant.imgRectangle3152x52,
          elNorStore: "El Hoda Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.9 KM",
          supportHeart: ImageConstant.imgSupportHeartRed600),
      Storeinfo7ItemModel(
          storeImage: ImageConstant.imgRectangle3052x52,
          elNorStore: "El Nor Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.2 KM",
          supportHeart: ImageConstant.imgSupportHeartBlack900),
      Storeinfo7ItemModel(
          storeImage: ImageConstant.imgRectangle3152x52,
          elNorStore: "El Hoda Store",
          ratingText: "4.8",
          ratingCount: "-574 Ratings",
          distance: "1.9 KM",
          supportHeart: ImageConstant.imgSupportHeartRed600)
    ];
  }

  _onInitialize(
    OnehundredfortysixInitialEvent event,
    Emitter<OnehundredfortysixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        onehundredfortysixModelObj: state.onehundredfortysixModelObj?.copyWith(
      storeinfo7ItemList: fillStoreinfo7ItemList(),
    )));
  }
}
