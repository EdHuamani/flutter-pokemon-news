import 'package:flutter/material.dart';
import 'package:pokemon_news/pokemon_new.dart';

class DetailScreen extends StatelessWidget {
  final PokemonNew pokemonNew;

  const DetailScreen({Key key, @required this.pokemonNew}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      floatingActionButton: _buildFloatinActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildFloatinActionButton(BuildContext context) {
    return new FloatingActionButton(
      mini: true,
      backgroundColor: Colors.green,
      elevation: 0.0,
      onPressed: () {
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(color: Colors.white)),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return new Container(
      constraints: new BoxConstraints.expand(),
      color: Colors.green,
      child: new Stack(
        children: <Widget>[
          _getBackground(),
          _getGradient(),
          _getContent(context),
          // _getToolbar(context),
        ],
      ),
    );
  }

  Container _getBackground() {
    return new Container(
      child: new Image.asset(
        'assets/news_${pokemonNew.id}.jpg',
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: new BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[Colors.green.withOpacity(0.0), Colors.green],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Widget _getContent(BuildContext context) {
    return new ListView(
      physics: const BouncingScrollPhysics(),
      padding: new EdgeInsets.fromLTRB(0.0, 250.0, 0.0, 32.0),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Material(
            type: MaterialType.card,
            borderRadius: BorderRadius.circular(10.0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(pokemonNew.title,
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 22.0)),
                    SizedBox(height: 8.0,),
                    Text(
                        'Hace ${DateTime.now().difference(pokemonNew.date).inDays} días',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0)),
                    Divider(),
                    Text(
                      pokemonNew.body,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blueAccent),
                    )
                  ],
                ),
            ),
          ),
        )
      ],
    );
  }
}
