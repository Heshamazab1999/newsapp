import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/components/load_image.dart';
import 'package:newsapp/constants.dart';
import 'package:newsapp/model/new_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, this.newsModel, this.index}) : super(key: key);
  final NewsModel? newsModel;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: K.width,
              height: K.height * 0.3,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: LoadImage(
                  image: newsModel!.articles![index!].urlToImage ?? ''),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(newsModel!.articles![index!].author ?? '',
                  style: const TextStyle(color: K.greyColor, fontSize: 10)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                newsModel!.articles![index!].title ?? '',
                style: const TextStyle(
                  fontSize: 8,
                  color: K.blackColor,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Description:"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AutoSizeText(
                newsModel!.articles![index!].description ?? '',
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: K.blackColor,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Content:"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AutoSizeText(
                newsModel!.articles![index!].content ?? '',
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: K.blackColor,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("published At:"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AutoSizeText(
                  newsModel!.articles![index!].publishedAt ?? '',
                  style: const TextStyle(color: K.greyColor, fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
