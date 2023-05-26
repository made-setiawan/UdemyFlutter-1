// ignore_for_file: public_member_api_docs, sort_constructors_first
class BookList {
  String imageUrl;
  String writers;
  String title;
  BookList({
    required this.imageUrl,
    required this.writers,
    required this.title,
  });
}

List<BookList> bookLists = [
  BookList(
      imageUrl: 'assets/images/trending_book1.png',
      writers: 'Guy Kawasaki',
      title: 'Enchatment'),
  BookList(
      imageUrl: 'assets/images/trending_book2.png',
      writers: 'Aaron Mahnke',
      title: 'Lore'),
  BookList(
      imageUrl: 'assets/images/trending_book3.png',
      writers: 'Spencer Jhonson M.D',
      title: 'Who Moved My Cheese'),
];
