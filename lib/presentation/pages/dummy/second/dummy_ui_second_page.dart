import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy/dummy_ui_container_card.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy/dummy_ui_image_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../../../widgets/molecules/platform_app_bar.dart';

@RoutePage()
class DummyUiSecondPage extends StatefulWidget {
  const DummyUiSecondPage({super.key});

  @override
  State<DummyUiSecondPage> createState() => _DummyUiSecondPageState();
}

class _DummyUiSecondPageState extends State<DummyUiSecondPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PlatformAppBar(
          title: Text(
            'Dummy UI',
          ),
          bottom: TabBar(tabs: [
            Text("ListView"),
            Text("GridView")
          ]),
        ),
        body: Padding(
          padding: UIHelper.padding(top: 12.0),
          child: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                padding: UIHelper.padding(horizontal: 20.0),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return DummyUiContainerCard(
                      title:
                          "How can i be Flutter Developer Expert ${index + 1} ?");
                },
              ),
              Padding(
                padding: UIHelper.padding(horizontal: 12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.1,
                  children: List.generate(9, (index) => DummyUiImageCard(title: "Container $index",)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
