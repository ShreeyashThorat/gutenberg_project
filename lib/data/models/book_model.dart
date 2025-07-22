class BookModel {
  int? id;
  String? title;
  List<Authors>? authors;
  List<Translators>? translators;
  List<String>? subjects;
  List<String>? bookshelves;
  List<String>? languages;
  bool? copyright;
  String? mediaType;
  Formats? formats;
  int? downloadCount;

  BookModel({
    this.id,
    this.title,
    this.authors,
    this.translators,
    this.subjects,
    this.bookshelves,
    this.languages,
    this.copyright,
    this.mediaType,
    this.formats,
    this.downloadCount,
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    title = json['title'] ?? "";
    if (json['authors'] != null) {
      authors = <Authors>[];
      json['authors'].forEach((v) {
        authors!.add(Authors.fromJson(v));
      });
    }
    if (json['translators'] != null) {
      translators = <Translators>[];
      json['translators'].forEach((v) {
        translators!.add(Translators.fromJson(v));
      });
    }
    subjects = json['subjects'].cast<String>();
    bookshelves = json['bookshelves'].cast<String>();
    languages = json['languages'].cast<String>();
    copyright = json['copyright'] ?? false;
    mediaType = json['media_type'] ?? "";
    formats =
        json['formats'] != null ? Formats.fromJson(json['formats']) : null;
    downloadCount = json['download_count'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id ?? 0;
    data['title'] = title ?? "";
    if (authors != null) {
      data['authors'] = authors!.map((v) => v.toJson()).toList();
    }
    if (translators != null) {
      data['translators'] = translators!.map((v) => v.toJson()).toList();
    }
    data['subjects'] = subjects;
    data['bookshelves'] = bookshelves;
    data['languages'] = languages;
    data['copyright'] = copyright ?? false;
    data['media_type'] = mediaType ?? "";
    if (formats != null) {
      data['formats'] = formats!.toJson();
    }
    data['download_count'] = downloadCount ?? 0;
    return data;
  }
}

class Authors {
  String? name;
  num? birthYear;
  num? deathYear;

  Authors({this.name, this.birthYear, this.deathYear});

  Authors.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? "";
    birthYear = json['birth_year'] ?? 0;
    deathYear = json['death_year'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name ?? "";
    data['birth_year'] = birthYear ?? 0;
    data['death_year'] = deathYear ?? 0;
    return data;
  }
}

class Translators {
  String? name;
  num? birthYear;
  num? deathYear;

  Translators({this.name, this.birthYear, this.deathYear});

  Translators.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? "";
    birthYear = json['birth_year'] ?? 0;
    deathYear = json['death_year'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name ?? "";
    data['birth_year'] = birthYear ?? 0;
    data['death_year'] = deathYear ?? 0;
    return data;
  }
}

class Formats {
  String? textHtml;
  String? textPlain;
  String? textPlainCharsetUsAscii;
  String? imageJpeg;
  String? textHtmlCharsetIso88591;

  Formats({
    this.textHtml,
    this.textPlain,
    this.textPlainCharsetUsAscii,
    this.imageJpeg,
    this.textHtmlCharsetIso88591,
  });

  Formats.fromJson(Map<String, dynamic> json) {
    textHtml = json['text/html'] ?? "";
    textPlain = json['text/plain'] ?? "";
    textPlainCharsetUsAscii = json['text/plain; charset=us-ascii'] ?? "";
    textHtmlCharsetIso88591 = json['text/html; charset=iso-8859-1'] ?? "";
    imageJpeg = json['image/jpeg'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text/html'] = textHtml ?? "";
    data['text/plain'] = textPlain ?? "";
    data['text/plain; charset=us-ascii'] = textPlainCharsetUsAscii ?? "";
    data['text/html; charset=iso-8859-1'] = textHtmlCharsetIso88591 ?? "";
    data['image/jpeg'] = imageJpeg ?? "";
    return data;
  }
}
