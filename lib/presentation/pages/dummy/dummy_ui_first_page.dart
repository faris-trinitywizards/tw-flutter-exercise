import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../../../core/commons/constants.dart';
import '../../widgets/molecules/action_text.dart';
import '../../widgets/molecules/platform_app_bar.dart';

@RoutePage()
class DummyUiFirstPage extends StatelessWidget {
  const DummyUiFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlatformAppBar(
        title: Text(
          'Dummy UI',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UIHelper.padding(horizontal: 16.0, bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActionText(
                onTap: () {},
                title: "Nest",
                desc: "TabBar, GridView, ListView",
              ),
              const Text("Container And Text", style: TextStyle(color: Colors.green),),
              const DummyUiContainerCard(title: "How can i be Flutter Developer Expert"),
              UIHelper.verticalSpace(20.0),
              const Text("Column", style: TextStyle(color: Colors.green),),
              const Column(
                children: [
                  DummyUiContainerCard(title: "How can i be Flutter Developer Expert 1"),
                  DummyUiContainerCard(title: "How can i be Flutter Developer Expert 2"),
                ],
              ),
              UIHelper.verticalSpace(20.0),
              const Text("Row", style: TextStyle(color: Colors.green),),
              Row(
                children: [
                  const Expanded(child: DummyUiImageCard(title: "1st Container")),
                  UIHelper.horizontalSpace(8.0),
                  const Expanded(child: DummyUiImageCard(title: "2nd Container")),
                  UIHelper.horizontalSpace(8.0),
                  const Expanded(child: DummyUiImageCard(title: "3th Container")),
                ],
              ),
              UIHelper.verticalSpace(20.0),
              const Text("Button", style: TextStyle(color: Colors.green),),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text(
                    "Submit"
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.0),
              const Text("Input", style: TextStyle(color: Colors.green),),
              Container(
                margin: UIHelper.padding(top: 4.0),
                padding: UIHelper.padding(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConstant.grey, width: 0.5),
                  borderRadius: UIHelper.borderRadiusCircular(all: 10)),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.left,
                  autovalidateMode: AutovalidateMode.always,
                  style: context.textTheme.bodyLarge,
                  decoration: const InputDecoration(
                    hintText: "Enter your email",
                    prefixIcon: Icon(Icons.mail_outline),
                    border: InputBorder.none
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.0),
              const Text("Images Assets, SizedBox, And Expanded", style: TextStyle(color: Colors.green),),
              Row(
                children: [
                  const Expanded(child: DummyUiImageCard(title: "1st Contaner",)),
                  UIHelper.horizontalSpace(20.0),
                  const DummyUiImageCard(title: "3rd Container",)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DummyUiRectangleImage extends StatelessWidget {
  const DummyUiRectangleImage({super.key, this.imgSrc, this.title});

  final String? imgSrc;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: UIHelper.borderRadiusCircular(all: 10.0),
          child: Image.network(
            imgSrc ?? Constants.dummyImg,
            width: UIHelper.setSp(70.0),
            height: UIHelper.setSp(70.0),
            fit: BoxFit.cover,
          ),
        ),
        UIHelper.verticalSpace(4.0),
        if (title != null) Text(title!, style: context.textTheme.bodySmall,)
      ],
    );
  }
}

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
class DummyUiImageCard extends StatelessWidget {
  const DummyUiImageCard({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: UIHelper.padding(top: 4.0),
      padding: UIHelper.padding(horizontal: 8.0, vertical: 20.0),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstant.grey, width: 0.5),
          borderRadius: UIHelper.borderRadiusCircular(all: 10)),
      child: DummyUiRectangleImage(title: title,),
    );
  }
}

