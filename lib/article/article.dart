
class Article {
  final String title;
  final String text;
  final int commentsCount;
  Article(this.title,this.text, this.commentsCount);
  static List<Article> fakeArticleList () {
    return [
      Article('title1', 'text1', 2),
      Article('title2', 'text2', 2),
      Article('title3', 'text3', 2),
      Article('title4', 'text4', 2),
    ];
  }
}