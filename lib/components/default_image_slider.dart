import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DefaultSliderElements extends StatefulWidget {
  const DefaultSliderElements({super.key});

  @override
  DefaultSliderElementsState createState() => DefaultSliderElementsState();
}

class DefaultSliderElementsState extends State<DefaultSliderElements> {
  late Future<List<Widget>> _imageSlidersFuture;

  @override
  void initState() {
    super.initState();
    _imageSlidersFuture = loadImages(context);
  }

  Future<List<Widget>> loadImages(BuildContext context) async {
    String manifestContent =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    Map<String, dynamic> manifestMap = json.decode(manifestContent);

    List<String> imagePaths = manifestMap.keys
        .where((key) =>
            key.startsWith('assets/img/') &&
            (key.endsWith('.png') ||
                key.endsWith('.jpg') ||
                key.endsWith('.jpeg')))
        .toList();

    final List<Widget> imageSliders = imagePaths
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();

    return imageSliders;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Widget>>(
      future: _imageSlidersFuture,
      builder: (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading images'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No images found'));
        } else {
          return CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
            ),
            items: snapshot.data!,
          );
        }
      },
    );
  }
}
