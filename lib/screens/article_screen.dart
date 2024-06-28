import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticleScreen extends StatefulWidget {
  String title;
  String image;

  ArticleScreen({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  late Future<DocumentSnapshot<Map<String, dynamic>>> _articleFuture;
  late Future<DocumentSnapshot<Map<String, dynamic>>> _imageFuture;

  @override
  void initState() {
    super.initState();
    _articleFuture = _fetchArticle();
    _imageFuture = _fetchImage();
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> _fetchArticle() async {
    return FirebaseFirestore.instance.collection('news').doc(widget.title).get();
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> _fetchImage() async {
    return FirebaseFirestore.instance.collection('images').doc(widget.image).get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 49, 162, 197),
      ),
      body: FutureBuilder(
        future: Future.wait([_articleFuture, _imageFuture]),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data == null) {
            return const Center(child: Text('No data found'));
          }

          final articleData = snapshot.data![0].data() as Map<String, dynamic>?;
          final imageData = snapshot.data![1].data() as Map<String, dynamic>?;

          if (articleData == null || articleData.isEmpty) {
            return const Center(child: Text('Article data is empty'));
          }
          if (imageData == null || imageData.isEmpty) {
            return const Center(child: Text('Image data is empty'));
          }

          final articleTitle = articleData['title'] ?? 'No title';
          final articleDescription = articleData['description'] ?? 'No description';
          final imageUrl = imageData['image'] ?? '';

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  articleTitle,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                if (imageUrl.isNotEmpty)
                  Image.network(
                    imageUrl,
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                SizedBox(height: 16),
                Text(
                  articleDescription,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
