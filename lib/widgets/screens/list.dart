import 'package:flutter/material.dart';
import 'package:flutter_template/models/sample.dart';
import 'package:flutter_template/services/fake_data.dart';
import 'package:flutter_template/theme/colors.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/widgets/components/container.dart';
import 'package:flutter_template/widgets/components/scaffold_page.dart';
import 'package:flutter_template/widgets/screens/article.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);
  
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final String title = "List of Sample Item";
  late List<SampleData> items;

  @override
  void initState() {
    super.initState();
    loadItems();
  }

  loadItems() async {
    items = await FakeData.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      appBar: AppBar(
        title: Text(title),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.map((e) => itemCard(e)).toList()
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget itemCard(SampleData e) => CardContainer(
    padding: const EdgeInsets.symmetric(
      horizontal: 8,
      vertical: 6
    ),
    shadows: ThemeDecoration.shadow,
    onTap: () => viewArticle(e),
    onLongPress: () => showDialog(context: context, builder: (_) => itemModal(e)),
    child: ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(e.user.profileImage.url!)),
      title: Text(e.name),
      subtitle: Text(e.description ?? ""),
    )    
  );

  void viewArticle(data) => Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => ArticlePage(data: data),
  ));

  Widget itemModal(SampleData data) => SimpleDialog(
    title: Text(data.name),
    children: [
      ButtonBar(children: [
        TextButton(onPressed: () => viewArticle(data), child: Text("Continue")),
        TextButton(onPressed: () => {}, child: Text("Cancel"))
      ],)
    ],
  );
}