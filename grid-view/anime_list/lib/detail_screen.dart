import 'package:flutter/material.dart';
import 'anime_list.dart';
class DetailScreen extends StatelessWidget{
  final Anime anime;
  const DetailScreen({Key? key, required this.anime}) : super(key: key);
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body : SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            SafeArea(child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const FavoriteButton(),
                ],
              )
            )),
            SizedBox(height: 20),
            Container(
              child: Text(anime.judul,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)
              )
            ),
            Container(
              child: 
              Image.asset(
                anime.imageAsset,
                height: 200,),
              ),
            SizedBox(height: 20,),
            Container(
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  Column(
                    children: [
                        Icon(Icons.star),
                        Text('Score'),
                        Text(anime.score)
                  ],),
                  Column(
                    children: [
                      Icon(Icons.people),
                      Text('Fans'),
                      Text(anime.fans)
                    ],
                  ),
                  Column(children: [
                    Icon(Icons.score),
                    Text('Rank'),
                    Text(anime.rank)
                  ],)
                ],
                ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(16),
              child:Container(
                child: Column(
                children: <Widget>[
                  Text('Sinopsis:', 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(anime.sinopsis,
                  textAlign: TextAlign.justify,),
                  Text(anime.sinopsis2,
                  textAlign: TextAlign.justify,)
                ],
              )
            ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                child: Column(children: [
                  Text('Side Story:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text(anime.sideStory)
                ],)
              )
            )
          ],
        ),
      )
      )
    );
  }
}

class FavoriteButton extends StatefulWidget{
  const FavoriteButton({Key? key}) : super(key: key);

  @override 
  _FavoriteButtonState createState() => _FavoriteButtonState();
}
class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border),
        color: Colors.red,
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}