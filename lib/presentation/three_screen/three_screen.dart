import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/three_bloc.dart';
import 'models/three_model.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThreeBloc>(
      create: (context) => ThreeBloc(ThreeState(
        threeModelObj: ThreeModel(),
      ))
        ..add(ThreeInitialEvent()),
      child: ThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThreeBloc, ThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: 361.h,
              margin: EdgeInsets.only(
                left: 6.h,
                top: 15.v,
                right: 6.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.fillCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_09_30".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 7.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_start_time".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup30,
                    height: 255.v,
                    width: 323.h,
                  ),
                  SizedBox(height: 60.v),
                  _buildRowSearchOne(context),
                  SizedBox(height: 45.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 34.h,
                      right: 42.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 13.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_23_0".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      bottom: 15.v,
                                    ),
                                    child: Text(
                                      "lbl_m".tr,
                                      style: CustomTextStyles.bodySmallGray100,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 21.v),
                                    child: Text(
                                      "lbl_2".tr,
                                      style: CustomTextStyles
                                          .monumentExtendedGray100,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 23.v),
                              Opacity(
                                opacity: 0.5,
                                child: SizedBox(
                                  width: 60.h,
                                  child: Text(
                                    "lbl_cleaning_area".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      height: 1.08,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 13.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 72.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_20".tr,
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 16.v),
                                      child: Text(
                                        "lbl_min".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray100,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 23.v),
                              Opacity(
                                opacity: 0.5,
                                child: SizedBox(
                                  width: 60.h,
                                  child: Text(
                                    "lbl_cleaning_time".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      height: 1.08,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_cleaning_details".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowSearchOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 59.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(5.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMicrophone,
                ),
              ),
              Container(
                width: 24.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillTeal.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder12,
                ),
                child: Text(
                  "lbl_i".tr,
                  style: CustomTextStyles.bodySmallLightblue700,
                ),
              )
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSearch,
          height: 23.v,
          width: 22.h,
        )
      ],
    );
  }
}
