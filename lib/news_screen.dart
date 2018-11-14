import 'package:flutter/material.dart';
import 'package:pokemon_news/detail_sreen.dart';
import 'package:pokemon_news/pokemon_new.dart';

BoxDecoration _screenDecoration = BoxDecoration(
    gradient: LinearGradient(
  begin: FractionalOffset.topLeft,
  end: FractionalOffset.bottomRight,
  colors: [
    Colors.green.withOpacity(0.6),
    Colors.green.withOpacity(0.4),
    Colors.green.withOpacity(0.8),
  ],
));

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _screenDecoration,
        child: _buildNews(),
      ),
    );
  }

  Widget _buildNews() {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) =>
          _buildNewsItem(context, index),
    );
  }

  Widget _buildNewsItem(BuildContext context, index) {
    final PokemonNew _new = news[index];
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
                  pokemonNew: _new,
                ),
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              child: ClipRRect(
                  borderRadius: new BorderRadius.circular(8.0),
                  child:
                      Image.asset('assets/news_$index.jpg', fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.0),
                        Colors.black54,
                      ],
                    )),
              ),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 30.0,
            right: 30.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _new.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0),
                ),
                Text(
                  'Hace ${DateTime.now().difference(_new.date).inDays} días',
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
