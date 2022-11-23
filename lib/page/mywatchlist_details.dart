import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/page/mywatchlist_page.dart';


class WatchListDetails extends StatefulWidget {
  WatchListDetails({Key? key}) : super(key: key);

  @override
  State<WatchListDetails> createState() => WatchListStateDetails();
}

class WatchListStateDetails extends State<WatchListDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Watchlist Details'),
        ),
        drawer: DrawerClass(),
        body: 
        Align(
          alignment: Alignment.center,
          child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Details.fetcher.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text("Release Date : " + Details.fetcher.releaseDate, style: const TextStyle(fontSize: 20)),  
            Text("Rating : " + Details.fetcher.rating.toString(), style: const TextStyle(fontSize: 20)),
            Text("Watched : " + Details.showStatus(), style: const TextStyle(fontSize: 20)),
            Text("Review : " + Details.fetcher.review, style: const TextStyle(fontSize: 20)),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back", style: const TextStyle(fontSize: 14)),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}