import 'package:flutter/cupertino.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';

import '../../../core/commons/colors_const.dart';
import '../../../core/commons/constants.dart';
import '../../widgets/organisms/ui_helper.dart';
import 'dummy_ui_rectangle_image.dart';

class DummyUiContainerCard extends StatelessWidget {
  const DummyUiContainerCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: UIHelper.padding(top: 4.0),
      padding: UIHelper.padding(horizontal: 12.0, vertical: 20.0),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstant.grey, width: 0.5),
          borderRadius: UIHelper.borderRadiusCircular(all: 10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DummyUiRectangleImage(
            imgSrc: Constants.dummyImg,
          ),
          UIHelper.horizontalSpace(12.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.headlineSmall,
                ),
                UIHelper.verticalSpace(8.0),
                Text(
                  "Jill Lepore . 23 May 2023",
                  style: context.textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}