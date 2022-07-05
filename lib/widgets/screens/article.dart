import 'package:flutter/material.dart';
import 'package:flutter_template/models/sample.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/widgets/components/container.dart';
import 'package:flutter_template/widgets/components/scaffold_page.dart';

class ArticlePage extends StatefulWidget {
  ArticlePage({
    required this.data,
    Key? key
  }) : super(key: key);

  SampleData data;

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  SampleData get data => widget.data;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      appBar: AppBar(title: Text(data.name)),
      child: CardContainer(
        shadows: ThemeDecoration.shadow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data.name),
            if(data.description != null) Text(data.description!),
          ]
        ),
      ),
    );
  }
}