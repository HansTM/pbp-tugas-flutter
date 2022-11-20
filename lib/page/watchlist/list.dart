import 'package:tugas/model/mywatchlist.dart';
import 'package:tugas/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:tugas/page/watchlist/details.dart';

class WatchListListPage extends StatefulWidget {
  const WatchListListPage({super.key});
  final String title = 'My Watch List';

  @override
  State<WatchListListPage> createState() => _WatchListListPageState();
}

class _WatchListListPageState extends State<WatchListListPage> {
  late Future<List<MyWatchList>> futureMyWatchList;

  @override
  void initState() {
    super.initState();
    futureMyWatchList = fetchMyWatchlist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const GlobalDrawer(),
      body: FutureBuilder<List<MyWatchList>>(
        future: futureMyWatchList,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => Card(
                child: InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "${snapshot.data![index].fields.title}",
                      style: const TextStyle(
                        // fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WatchListDetailsPage(watchlist: snapshot.data![index])),
                    );
                  },
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return const CircularProgressIndicator();
        }
      )
    );
  }
}

