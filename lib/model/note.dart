// ignore_for_file: public_member_api_docs, sort_constructors_first

class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'content': content,
      'modifiedTime': modifiedTime.millisecondsSinceEpoch,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'] as int,
      title: map['title'] as String,
      content: map['content'] as String,
      modifiedTime:
          DateTime.fromMillisecondsSinceEpoch(map['modifiedTime'] as int),
    );
  }
}

List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Flutter Developer',
    content:
        'A Flutter developer is a software developer who specializes in building applications using the Flutter framework. Flutter is an open-source UI software development kit (SDK) developed by Google. It allows developers to create high-quality native interfaces for iOS, Android, web, and desktop platforms from a single codebase.',
    modifiedTime: DateTime(2023, 7, 26, 35, 55),
  ),
  Note(
    id: 1,
    title: 'Responsibility of flutter',
    content:
        'Overall, a Flutter developer plays a crucial role in the entire app development lifecycle, from conceptualization and design to implementation, testing, and deployment.',
    modifiedTime: DateTime(2023, 7, 27, 36, 7),
  ),
  Note(
    id: 2,
    title: 'you can add some title name',
    content: 'you can write , your content and description of your note',
    modifiedTime: DateTime(2023, 7, 27, 36, 8),
  ),
];
