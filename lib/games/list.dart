import 'package:flutter/material.dart';
import 'package:simplepart_playstore/games/detail.dart';
import 'package:simplepart_playstore/games_class.dart';

// Page for display list of games
class GameList extends StatelessWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          if (viewportConstraints.maxWidth <= 700) {
            return const GameListView();
          } else if (viewportConstraints.maxWidth <= 1200) {
            return const GameGridView(gridCount: 4);
          } else {
            return const GameGridView(gridCount: 6);
          }
        },
      ),
    );
  }
}

class GameListView extends StatelessWidget {
  const GameListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final DataGames game = listDataGame[index];
          return Card(
            shadowColor: Colors.transparent,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(game.previews[0]),
                  ),
                ),
                ListTile(
                  visualDensity: VisualDensity.comfortable,
                  isThreeLine: true,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(game.icon),
                  ),
                  title: Text(game.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(game.studio),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: game.rating),
                                  const WidgetSpan(
                                    child: Icon(
                                      Icons.star_rate,
                                      size: 16,
                                      color: Colors.black87,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(game.sizeApp),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return GameDetail(game: game);
                      }),
                    );
                  },
                ),
              ],
            ),
          );
        },
        itemCount: listDataGame.length);
  }
}

class GameGridView extends StatelessWidget {
  final int gridCount;

  const GameGridView({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: 4,
        children: listDataGame.map((game) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return GameDetail(game: game);
                }),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Image.asset(
                    game.previews[0],
                    fit: BoxFit.cover,
                  )),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      game.title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                    text: game.rating,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.star_rate,
                                    size: 16,
                                    color: Colors.black87,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Text(
                          game.sizeApp,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
