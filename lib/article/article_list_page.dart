import 'package:flutter/material.dart' show BuildContext, Container, Key, State, StatefulWidget, Widget;
import 'article.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:io';

class ArticleListPage extends StatefulWidget {
  final Widget child;

  ArticleListPage({Key key, this.child}) : super(key: key);

  _ArticleListPageState createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
    List<Article> _articleIDList;
    _ArticleListPageState() {
      //_requestHttpClientArticleIDList();
    }

    @override
    void initState() { 
          _requestArticleIDList();
          super.initState();
    }
      
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Article')
        ),
        body: _bodyWidget()
      );
    }

    Widget _bodyWidget () {
      if(_articleIDList == null || _articleIDList.length == 0) {
        return Center(
          child: Text('no date yet'),
        );
      }
      return Center(
          child: Text('have date now'),
        );
    }

    void _requestArticleIDList () async {
        var url = "https://api.douban.com/v2/movie/in_theaters";
        var response = await http.get(url);
        if (response.statusCode != 200 ) {
          return;
        }
    }

    void _requestHttpClientArticleIDList() async {
        var httpClient = HttpClient();
        var urlString = "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty";
        var uri = new Uri.http(urlString,'');
         var request = await httpClient.getUrl(uri);
         var response = await request.close();
         if(response.statusCode != 200) {
           return;
         }
    }
  
  }
  
 