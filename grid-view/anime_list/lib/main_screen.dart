import 'package:flutter/material.dart';
import 'anime_list.dart';
import 'detail_screen.dart';
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime List'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(7, (index){
          final Anime anime = animeList[index];
          return Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: 
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailScreen(anime: anime);
                      }));
                    },
                    child:
                    Image.asset(
                    anime.imageAsset,
                    fit : BoxFit.cover)
                  )
,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(anime.judul)
                  )
                )
              ],
            )
          );
        })
      )  
    );
  }
}