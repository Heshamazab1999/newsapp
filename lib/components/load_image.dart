import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:newsapp/constants.dart';
import 'package:octo_image/octo_image.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class LoadImage extends StatelessWidget {
  final String? image;

  const LoadImage({this.image});

  @override
  Widget build(BuildContext context) {
    return OctoImage(
      width: K.width * 0.35,
      height: K.height,
      image: CachedNetworkImageProvider(
        image!,
      ),
      placeholderBuilder: OctoPlaceholder.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
          fit: BoxFit.cover),
      errorBuilder: (context, url, error) {
        return const BlurHash(hash: 'LEHV6nWB2yk8pyo0adR*.7kCMdnj');
      },
      fit: BoxFit.cover,
    );
  }
}
