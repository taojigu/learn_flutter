import 'package:flutter/material.dart' show BuildContext, Container, Key, State, StatefulWidget, Widget;
import 'article.dart';

class ArticleListPage extends StatefulWidget {
  final Widget child;

  ArticleListPage({Key key, this.child}) : super(key: key);

  _ArticleListPageState createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  List<Article> _articleList;
  @override
  void initState() { 
        _articleList = Article.fakeArticleList();
        super.initState();
      }
    
      Widget build(BuildContext context) {
        return Container(
           child: widget.child,
        );
      }

}