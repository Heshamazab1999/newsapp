import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/components/load_image.dart';
import 'package:newsapp/constants.dart';

class ArticlesCard extends StatelessWidget {
  final String? author;
  final String? image;
  final String? date;
  final String? description;
  final Function()? onTap;

  const ArticlesCard(
      {Key? key,
      this.author,
      this.date,
      this.image,
      this.description,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(10),
          shadowColor: K.greyColor,
          child: Container(
            width: K.width,
            height: K.height * 0.15,
            decoration: BoxDecoration(
                color: K.whiteColor, borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: K.width * 0.35,
                    height: K.height,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: LoadImage(image: image!),
                  ),
                ),
              const  SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: K.width * 0.5,
                        child: AutoSizeText(author!,
                            style: const TextStyle(
                                color: K.greyColor, fontSize: 10)),
                      ),
                      SizedBox(
                        width: K.width * 0.5,
                        child: AutoSizeText(
                          description!,
                          maxLines: 5,
                          style: const TextStyle(
                            fontSize: 10,
                            color: K.blackColor,
                          ),
                        ),
                      ),
                      AutoSizeText(date!,
                          style:
                              const TextStyle(color: K.greyColor, fontSize: 10)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
