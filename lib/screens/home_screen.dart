import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/components/article_card.dart';
import 'package:newsapp/components/loading_widget.dart';
import 'package:newsapp/constants.dart';
import 'package:newsapp/controller/home_controller.dart';
import 'package:newsapp/enum/view_state.dart';
import 'package:newsapp/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: K.mainColor,
        centerTitle: true,
        elevation: 1,
        title: const Text("News App"),
      ),
      body: Obx(() => controller.state == ViewState.busy
          ? const LoadingWidget()
          : ListView.builder(
              itemCount: controller.newsModel!.articles!.length,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (ctx, index) => ArticlesCard(
                    onTap: () {
                      Get.to(() => DetailsScreen(
                            newsModel: controller.newsModel,
                            index: index,
                          ));
                    },
                    author:
                        controller.newsModel!.articles![index].author ?? '',
                    date: controller.newsModel!.articles![index].publishedAt ??
                        '',
                    description:
                        controller.newsModel!.articles![index].description ??
                            '',
                    image: controller.newsModel!.articles![index].urlToImage ??
                        '',
                  ))),
    );
  }
}
