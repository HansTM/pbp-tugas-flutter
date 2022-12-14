import 'package:tugas/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WatchListDetailsPage extends StatefulWidget {
  const WatchListDetailsPage({super.key, required this.watchlist});

  final String title = 'Detail';
  final MyWatchList watchlist;

  @override
  State<WatchListDetailsPage> createState() => _WatchListDetailsPageState();
}

class _WatchListDetailsPageState extends State<WatchListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.watchlist.fields.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(text: 'Release Date: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: DateFormat("dd MMMM y").format(widget.watchlist.fields.releaseDate))
                    ],
                    style: const TextStyle(color: Colors.black87, fontFamily: 'Roboto')
                  )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(text: 'Rating: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: widget.watchlist.fields.rating.toString())
                    ],
                    style: const TextStyle(color: Colors.black87, fontFamily: 'Roboto')
                  )
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(text: 'Status: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: widget.watchlist.fields.watched ? 'Watched' : 'Not Watched')
                    ],
                    style: const TextStyle(color: Colors.black87, fontFamily: 'Roboto')
                  )
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'Review: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                  style: TextStyle(color: Colors.black87, fontFamily: 'Roboto')
                )
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: widget.watchlist.fields.review)
                  ],
                  style: const TextStyle(color: Colors.black87, fontFamily: 'Roboto')
                )
              ),
            ],
          )

        ),
      ),
    );
  }
}

