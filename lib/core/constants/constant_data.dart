import 'package:gutenberg_project/core/constants/constant_images.dart';
import 'package:gutenberg_project/data/models/category_model.dart';

import '../../data/models/book_model.dart';

class ConstantData {
  static List<CategoryItem> categories = [
    CategoryItem(name: "Fiction", icon: ConstantImages.fiction),
    CategoryItem(name: "Drama", icon: ConstantImages.drama),
    CategoryItem(name: "Humor", icon: ConstantImages.humour),
    CategoryItem(name: "Politics", icon: ConstantImages.politics),
    CategoryItem(name: "Philosophy", icon: ConstantImages.philosophy),
    CategoryItem(name: "History", icon: ConstantImages.history),
    CategoryItem(name: "Adventure", icon: ConstantImages.adventure),
  ];

  static List<BookModel> books =
      results.map((book) => BookModel.fromJson(book)).toList();
  static List<dynamic> results = [
    {
      "id": 1232,
      "title": "The Prince",
      "authors": [
        {
          "name": "Machiavelli, Niccolò",
          "birth_year": 1469,
          "death_year": 1527,
        },
      ],
      "translators": [
        {
          "name": "Marriott, W. K. (William Kenaz)",
          "birth_year": null,
          "death_year": 1927,
        },
      ],
      "subjects": [
        "Political ethics -- Early works to 1800",
        "Political science -- Philosophy -- Early works to 1800",
        "State, The -- Early works to 1800",
      ],
      "bookshelves": [
        "Banned Books from Anne Haight's list",
        "Harvard Classics",
        "Philosophy",
        "Politics",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/1232.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/1232.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/1232.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/1232.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/1232/1232-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/1232.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/1232/pg1232.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/1232/1232-0.zip",
      },
      "download_count": 14966,
    },
    {
      "id": 43,
      "title": "The Strange Case of Dr. Jekyll and Mr. Hyde",
      "authors": [
        {
          "name": "Stevenson, Robert Louis",
          "birth_year": 1850,
          "death_year": 1894,
        },
      ],
      "translators": [],
      "subjects": [
        "Horror tales",
        "London (England) -- Fiction",
        "Multiple personality -- Fiction",
        "Physicians -- Fiction",
        "Psychological fiction",
        "Science fiction",
        "Self-experimentation in medicine -- Fiction",
      ],
      "bookshelves": ["Horror", "Movie Books", "Precursors of Science Fiction"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/43.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/43.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/43.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/43.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/43/43-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/43.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/43/pg43.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/43/43-0.zip",
      },
      "download_count": 14687,
    },
    {
      "id": 1400,
      "title": "Great Expectations",
      "authors": [
        {"name": "Dickens, Charles", "birth_year": 1812, "death_year": 1870},
      ],
      "translators": [],
      "subjects": [
        "Benefactors -- Fiction",
        "Bildungsromans",
        "England -- Fiction",
        "Ex-convicts -- Fiction",
        "Man-woman relationships -- Fiction",
        "Orphans -- Fiction",
        "Revenge -- Fiction",
        "Young men -- Fiction",
      ],
      "bookshelves": ["Best Books Ever Listings"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/1400.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/1400.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/1400.kf8.images",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/1400.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/1400/pg1400.cover.medium.jpg",
        "text/plain": "https://www.gutenberg.org/ebooks/1400.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/1400/1400-0.txt",
        "application/octet-stream":
            "https://www.gutenberg.org/files/1400/1400-0.zip",
      },
      "download_count": 14200,
    },
    {
      "id": 2591,
      "title": "Grimms' Fairy Tales",
      "authors": [
        {"name": "Grimm, Jacob", "birth_year": 1785, "death_year": 1863},
        {"name": "Grimm, Wilhelm", "birth_year": 1786, "death_year": 1859},
      ],
      "translators": [],
      "subjects": ["Fairy tales -- Germany"],
      "bookshelves": [],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/2591.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/2591/2591-h/2591-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/2591.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/2591.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/2591/2591-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/2591.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/2591/pg2591.cover.medium.jpg",
      },
      "download_count": 14050,
    },
    {
      "id": 1184,
      "title": "The Count of Monte Cristo",
      "authors": [
        {"name": "Dumas, Alexandre", "birth_year": 1802, "death_year": 1870},
        {"name": "Maquet, Auguste", "birth_year": 1813, "death_year": 1888},
      ],
      "translators": [],
      "subjects": [
        "Adventure stories",
        "Dantès, Edmond (Fictitious character) -- Fiction",
        "France -- History -- 19th century -- Fiction",
        "Historical fiction",
        "Pirates -- Fiction",
        "Prisoners -- Fiction",
        "Revenge -- Fiction",
      ],
      "bookshelves": ["Adventure", "Movie Books"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/1184.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/1184.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/1184.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/1184.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/1184/1184-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/1184.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/1184/pg1184.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/1184/1184-0.zip",
      },
      "download_count": 13270,
    },
    {
      "id": 2600,
      "title": "War and Peace",
      "authors": [
        {"name": "Tolstoy, Leo, graf", "birth_year": 1828, "death_year": 1910},
      ],
      "translators": [
        {"name": "Maude, Aylmer", "birth_year": 1858, "death_year": 1938},
        {"name": "Maude, Louise", "birth_year": 1855, "death_year": 1939},
      ],
      "subjects": [
        "Aristocracy (Social class) -- Russia -- Fiction",
        "Historical fiction",
        "Napoleonic Wars, 1800-1815 -- Campaigns -- Russia -- Fiction",
        "Russia -- History -- Alexander I, 1801-1825 -- Fiction",
        "War stories",
      ],
      "bookshelves": [
        "Best Books Ever Listings",
        "Historical Fiction",
        "Movie Books",
        "Napoleonic(Bookshelf)",
        "Opera",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/2600.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/2600.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/2600.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/2600.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/2600/2600-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/2600.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/2600/pg2600.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/2600/2600-0.zip",
      },
      "download_count": 13190,
    },
    {
      "id": 1497,
      "title": "The Republic",
      "authors": [
        {"name": "Plato", "birth_year": -428, "death_year": -348},
      ],
      "translators": [
        {"name": "Jowett, Benjamin", "birth_year": 1817, "death_year": 1893},
      ],
      "subjects": [
        "Classical literature",
        "Justice -- Early works to 1800",
        "Political science -- Early works to 1800",
        "Utopias -- Early works to 1800",
      ],
      "bookshelves": ["Philosophy"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/1497.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/1497.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/1497.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/1497.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/1497/1497-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/1497.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/1497/pg1497.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/1497/1497-0.zip",
      },
      "download_count": 13114,
    },
    {
      "id": 16389,
      "title": "The Enchanted April",
      "authors": [
        {
          "name": "Von Arnim, Elizabeth",
          "birth_year": 1866,
          "death_year": 1941,
        },
      ],
      "translators": [],
      "subjects": [
        "British -- Italy -- Fiction",
        "Domestic fiction",
        "Female friendship -- Fiction",
        "Italy -- Fiction",
        "Love stories",
      ],
      "bookshelves": ["Bestsellers, American, 1895-1923"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/16389.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/16389.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/16389.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/16389.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/16389/16389-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/16389.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/16389/pg16389.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/16389/16389-0.zip",
      },
      "download_count": 13015,
    },
    {
      "id": 2554,
      "title": "Crime and Punishment",
      "authors": [
        {"name": "Dostoyevsky, Fyodor", "birth_year": 1821, "death_year": 1881},
      ],
      "translators": [
        {"name": "Garnett, Constance", "birth_year": 1861, "death_year": 1946},
      ],
      "subjects": [
        "Crime -- Psychological aspects -- Fiction",
        "Detective and mystery stories",
        "Murder -- Fiction",
        "Psychological fiction",
        "Saint Petersburg (Russia) -- Fiction",
      ],
      "bookshelves": [
        "Best Books Ever Listings",
        "Crime Fiction",
        "Harvard Classics",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/2554.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/2554/2554-h/2554-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/2554.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/2554.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/2554/2554-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/2554.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/2554/pg2554.cover.medium.jpg",
      },
      "download_count": 12969,
    },
    {
      "id": 1260,
      "title": "Jane Eyre: An Autobiography",
      "authors": [
        {"name": "Brontë, Charlotte", "birth_year": 1816, "death_year": 1855},
      ],
      "translators": [],
      "subjects": [
        "Bildungsromans",
        "Charity-schools -- Fiction",
        "Country homes -- Fiction",
        "England -- Fiction",
        "Fathers and daughters -- Fiction",
        "Governesses -- Fiction",
        "Love stories",
        "Married people -- Fiction",
        "Mentally ill women -- Fiction",
        "Orphans -- Fiction",
        "Young women -- Fiction",
      ],
      "bookshelves": [],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/1260.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/1260.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/1260.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/1260.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/1260/1260-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/1260.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/1260/pg1260.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/1260/1260-0.zip",
      },
      "download_count": 12572,
    },
    {
      "id": 7370,
      "title": "Second Treatise of Government",
      "authors": [
        {"name": "Locke, John", "birth_year": 1632, "death_year": 1704},
      ],
      "translators": [],
      "subjects": [
        "Liberty -- Early works to 1800",
        "Political science -- Early works to 1800",
        "Toleration -- Early works to 1800",
      ],
      "bookshelves": ["Philosophy", "Politics"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/7370.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/7370.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/7370.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/7370.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/7370/7370-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/7370.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/7370/pg7370.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/7370/7370-0.zip",
      },
      "download_count": 12432,
    },
    {
      "id": 28054,
      "title": "The Brothers Karamazov",
      "authors": [
        {"name": "Dostoyevsky, Fyodor", "birth_year": 1821, "death_year": 1881},
      ],
      "translators": [
        {"name": "Garnett, Constance", "birth_year": 1861, "death_year": 1946},
      ],
      "subjects": [
        "Brothers -- Fiction",
        "Didactic fiction",
        "Fathers and sons -- Fiction",
        "Russia -- Social life and customs -- 1533-1917 -- Fiction",
      ],
      "bookshelves": ["Best Books Ever Listings"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/28054.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/28054.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/28054.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/28054.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/28054/28054-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/28054.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/28054/pg28054.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/28054/28054-0.zip",
      },
      "download_count": 12381,
    },
    {
      "id": 76,
      "title": "Adventures of Huckleberry Finn",
      "authors": [
        {"name": "Twain, Mark", "birth_year": 1835, "death_year": 1910},
      ],
      "translators": [],
      "subjects": [
        "Adventure stories",
        "Bildungsromans",
        "Boys -- Fiction",
        "Finn, Huckleberry (Fictitious character) -- Fiction",
        "Fugitive slaves -- Fiction",
        "Humorous stories",
        "Male friendship -- Fiction",
        "Mississippi River -- Fiction",
        "Missouri -- Fiction",
        "Race relations -- Fiction",
        "Runaway children -- Fiction",
      ],
      "bookshelves": [
        "Banned Books List from the American Library Association",
        "Banned Books from Anne Haight's list",
        "Best Books Ever Listings",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/76.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/76.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/76.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/76.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/76/76-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/76.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/76/pg76.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/76/76-0.zip",
      },
      "download_count": 12331,
    },
    {
      "id": 3600,
      "title": "Essays of Michel de Montaigne — Complete",
      "authors": [
        {
          "name": "Montaigne, Michel de",
          "birth_year": 1533,
          "death_year": 1592,
        },
      ],
      "translators": [
        {"name": "Cotton, Charles", "birth_year": 1630, "death_year": 1687},
      ],
      "subjects": ["French essays -- Translations into English"],
      "bookshelves": [
        "Banned Books from Anne Haight's list",
        "Best Books Ever Listings",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/3600.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/3600.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/3600.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/3600.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/3600/3600-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/3600.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/3600/pg3600.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/3600/3600-0.zip",
      },
      "download_count": 11803,
    },
    {
      "id": 3207,
      "title": "Leviathan",
      "authors": [
        {"name": "Hobbes, Thomas", "birth_year": 1588, "death_year": 1679},
      ],
      "translators": [],
      "subjects": [
        "Political science -- Early works to 1800",
        "State, The -- Early works to 1800",
      ],
      "bookshelves": ["Harvard Classics", "Politics"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/3207.html.images",
        "text/html; charset=us-ascii":
            "https://www.gutenberg.org/files/3207/3207-h/3207-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/3207.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/3207.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/3207/3207-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/3207.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/3207/pg3207.cover.medium.jpg",
      },
      "download_count": 11800,
    },
    {
      "id": 205,
      "title": "Walden, and On The Duty Of Civil Disobedience",
      "authors": [
        {
          "name": "Thoreau, Henry David",
          "birth_year": 1817,
          "death_year": 1862,
        },
      ],
      "translators": [],
      "subjects": [
        "Authors, American -- 19th century -- Biography",
        "Civil disobedience",
        "Government, Resistance to",
        "Natural history -- Massachusetts -- Walden Woods",
        "Solitude",
        "Thoreau, Henry David, 1817-1862 -- Homes and haunts -- Massachusetts -- Walden Woods",
        "Walden Woods (Mass.) -- Social life and customs",
        "Wilderness areas -- Massachusetts -- Walden Woods",
      ],
      "bookshelves": [],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/205.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/205/205-h/205-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/205.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/205.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/205/205-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/205.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/205/pg205.cover.medium.jpg",
      },
      "download_count": 11680,
    },
    {
      "id": 23,
      "title": "Narrative of the Life of Frederick Douglass, an American Slave",
      "authors": [
        {"name": "Douglass, Frederick", "birth_year": 1818, "death_year": 1895},
      ],
      "translators": [],
      "subjects": [
        "Abolitionists -- United States -- Biography",
        "African American abolitionists -- Biography",
        "Douglass, Frederick, 1818-1895",
        "Enslaved persons -- United States -- Biography",
      ],
      "bookshelves": ["African American Writers", "Slavery"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/23.html.images",
        "text/html; charset=us-ascii":
            "https://www.gutenberg.org/files/23/23-h/23-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/23.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/23.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/23/23-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/23.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/23/pg23.cover.medium.jpg",
      },
      "download_count": 11585,
    },
    {
      "id": 15399,
      "title":
          "The Interesting Narrative of the Life of Olaudah Equiano, Or Gustavus Vassa, The African: Written By Himself",
      "authors": [
        {"name": "Equiano, Olaudah", "birth_year": 1745, "death_year": 1797},
      ],
      "translators": [],
      "subjects": [
        "Enslaved persons -- Great Britain -- Biography",
        "Enslaved persons -- United States -- Biography",
        "Equiano, Olaudah, 1745-1797",
      ],
      "bookshelves": ["Africa"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/15399.html.images",
        "text/html; charset=iso-8859-1":
            "https://www.gutenberg.org/files/15399/15399-h/15399-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/15399.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/15399.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/15399.txt.utf-8",
        "text/plain; charset=iso-8859-1":
            "https://www.gutenberg.org/files/15399/15399-8.txt",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/15399/15399.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/15399.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/15399/pg15399.cover.medium.jpg",
      },
      "download_count": 11414,
    },
    {
      "id": 1727,
      "title":
          "The Odyssey: Rendered into English prose for the use of those who cannot read the original",
      "authors": [
        {"name": "Homer", "birth_year": -750, "death_year": -650},
      ],
      "translators": [
        {"name": "Butler, Samuel", "birth_year": 1835, "death_year": 1902},
      ],
      "subjects": [
        "Epic poetry, Greek -- Translations into English",
        "Homer -- Translations into English",
        "Odysseus, King of Ithaca (Mythological character)",
      ],
      "bookshelves": ["Classical Antiquity", "Harvard Classics"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/1727.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/1727.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/1727.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/1727.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/1727/1727-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/1727.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/1727/pg1727.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/1727/1727-0.zip",
      },
      "download_count": 11268,
    },
    {
      "id": 4300,
      "title": "Ulysses",
      "authors": [
        {"name": "Joyce, James", "birth_year": 1882, "death_year": 1941},
      ],
      "translators": [],
      "subjects": [
        "Alienation (Social psychology) -- Fiction",
        "Artists -- Fiction",
        "City and town life -- Fiction",
        "Domestic fiction",
        "Dublin (Ireland) -- Fiction",
        "Epic literature",
        "Jewish men -- Fiction",
        "Male friendship -- Fiction",
        "Married people -- Fiction",
        "Psychological fiction",
      ],
      "bookshelves": [
        "Banned Books List from the American Library Association",
        "Banned Books from Anne Haight's list",
        "Best Books Ever Listings",
        "Erotic Fiction",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/4300.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/4300/4300-h/4300-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/4300.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/4300.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/4300/4300-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/4300.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/4300/pg4300.cover.medium.jpg",
      },
      "download_count": 10979,
    },
    {
      "id": 74,
      "title": "The Adventures of Tom Sawyer, Complete",
      "authors": [
        {"name": "Twain, Mark", "birth_year": 1835, "death_year": 1910},
      ],
      "translators": [],
      "subjects": [
        "Adventure stories",
        "Bildungsromans",
        "Boys -- Fiction",
        "Child witnesses -- Fiction",
        "Humorous stories",
        "Male friendship -- Fiction",
        "Mississippi River Valley -- Fiction",
        "Missouri -- Fiction",
        "Runaway children -- Fiction",
        "Sawyer, Tom (Fictitious character) -- Fiction",
      ],
      "bookshelves": [
        "Banned Books List from the American Library Association",
        "Banned Books from Anne Haight's list",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/74.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/74.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/74.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/74.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/74/74-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/74.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/74/pg74.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/74/74-0.zip",
      },
      "download_count": 10847,
    },
    {
      "id": 41,
      "title": "The Legend of Sleepy Hollow",
      "authors": [
        {"name": "Irving, Washington", "birth_year": 1783, "death_year": 1859},
      ],
      "translators": [],
      "subjects": [
        "Ghosts -- Fiction",
        "New York (State) -- History -- 1775-1865 -- Fiction",
      ],
      "bookshelves": ["Children's Literature", "Harvard Classics"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/41.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/41.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/41.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/41.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/41/41-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/41.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/41/pg41.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/41/41-0.zip",
      },
      "download_count": 10636,
    },
    {
      "id": 27827,
      "title":
          "The Kama Sutra of Vatsyayana: Translated From the Sanscrit in Seven Parts With Preface, Introduction and Concluding Remarks",
      "authors": [
        {"name": "Vatsyayana", "birth_year": null, "death_year": null},
      ],
      "translators": [
        {
          "name": "Burton, Richard Francis, Sir",
          "birth_year": 1821,
          "death_year": 1890,
        },
        {
          "name": "Bhide, Shivaram Parashuram",
          "birth_year": null,
          "death_year": null,
        },
        {
          "name": "Indrajit, Bhagavanlal",
          "birth_year": null,
          "death_year": null,
        },
      ],
      "subjects": ["Love", "Sex"],
      "bookshelves": [
        "Banned Books from Anne Haight's list",
        "Erotic Fiction",
        "Sociology",
      ],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/27827.html.images",
        "text/html; charset=iso-8859-1":
            "https://www.gutenberg.org/files/27827/27827-h/27827-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/27827.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/27827.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/27827.txt.utf-8",
        "text/plain; charset=iso-8859-1":
            "https://www.gutenberg.org/files/27827/27827-8.txt",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/27827/27827.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/27827.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/27827/pg27827.cover.medium.jpg",
      },
      "download_count": 10601,
    },
    {
      "id": 2814,
      "title": "Dubliners",
      "authors": [
        {"name": "Joyce, James", "birth_year": 1882, "death_year": 1941},
      ],
      "translators": [],
      "subjects": ["Dublin (Ireland) -- Fiction", "Short stories"],
      "bookshelves": ["Banned Books from Anne Haight's list"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/2814.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/2814/2814-h/2814-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/2814.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/2814.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/2814/2814-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/2814.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/2814/pg2814.cover.medium.jpg",
      },
      "download_count": 10217,
    },
    {
      "id": 58585,
      "title": "The Prophet",
      "authors": [
        {"name": "Gibran, Kahlil", "birth_year": 1883, "death_year": 1931},
      ],
      "translators": [],
      "subjects": ["Mysticism -- Poetry", "Prose poems, American"],
      "bookshelves": [],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/58585.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/58585.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/58585.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/58585.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/58585/58585-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/58585.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/58585/pg58585.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/58585/58585-0.zip",
      },
      "download_count": 10102,
    },
    {
      "id": 219,
      "title": "Heart of Darkness",
      "authors": [
        {"name": "Conrad, Joseph", "birth_year": 1857, "death_year": 1924},
      ],
      "translators": [],
      "subjects": [
        "Africa -- Fiction",
        "Degeneration -- Fiction",
        "Europeans -- Africa -- Fiction",
        "Imperialism -- Fiction",
        "Psychological fiction",
        "Trading posts -- Fiction",
      ],
      "bookshelves": ["Best Books Ever Listings", "Movie Books"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/219.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/219/219-h/219-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/219.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/219.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/219/219-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/219.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/219/pg219.cover.medium.jpg",
      },
      "download_count": 9788,
    },
    {
      "id": 2680,
      "title": "Meditations",
      "authors": [
        {
          "name": "Marcus Aurelius, Emperor of Rome",
          "birth_year": 121,
          "death_year": 180,
        },
      ],
      "translators": [],
      "subjects": ["Ethics", "Life", "Stoics"],
      "bookshelves": ["Harvard Classics"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/2680.html.images",
        "text/html; charset=us-ascii":
            "https://www.gutenberg.org/files/2680/2680-h/2680-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/2680.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/2680.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/2680/2680-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/2680.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/2680/pg2680.cover.medium.jpg",
      },
      "download_count": 9767,
    },
    {
      "id": 1998,
      "title": "Thus Spake Zarathustra: A Book for All and None",
      "authors": [
        {
          "name": "Nietzsche, Friedrich Wilhelm",
          "birth_year": 1844,
          "death_year": 1900,
        },
      ],
      "translators": [
        {"name": "Common, Thomas", "birth_year": 1850, "death_year": 1919},
      ],
      "subjects": ["Philosophy, German", "Superman (Philosophical concept)"],
      "bookshelves": ["Philosophy"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/1998.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/1998.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/1998.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/1998.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/1998/1998-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/1998.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/1998/pg1998.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/1998/1998-0.zip",
      },
      "download_count": 9746,
    },
    {
      "id": 30254,
      "title": "The Romance of Lust: A classic Victorian erotic novel",
      "authors": [
        {"name": "Anonymous", "birth_year": null, "death_year": null},
      ],
      "translators": [],
      "subjects": [
        "Corporal punishment -- Fiction",
        "Erotic stories",
        "Incest -- Fiction",
        "Pornography",
        "Rape -- Fiction",
        "Sexual dominance and submission -- Fiction",
      ],
      "bookshelves": [],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/30254.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/30254/30254-h/30254-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/30254.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/30254.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/30254/30254-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/30254.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/30254/pg30254.cover.medium.jpg",
      },
      "download_count": 9615,
    },
    {
      "id": 16,
      "title": "Peter Pan",
      "authors": [
        {
          "name": "Barrie, J. M. (James Matthew)",
          "birth_year": 1860,
          "death_year": 1937,
        },
      ],
      "translators": [],
      "subjects": [
        "Fairies -- Fiction",
        "Fantasy literature",
        "Never-Never Land (Imaginary place) -- Fiction",
        "Peter Pan (Fictitious character) -- Fiction",
        "Pirates -- Fiction",
      ],
      "bookshelves": ["Children's Literature", "Movie Books"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/16.html.images",
        "text/html; charset=utf-8":
            "https://www.gutenberg.org/files/16/16-h/16-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/16.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/16.kf8.images",
        "text/plain; charset=utf-8":
            "https://www.gutenberg.org/files/16/16-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/16.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/16/pg16.cover.medium.jpg",
      },
      "download_count": 9388,
    },
    {
      "id": 46,
      "title": "A Christmas Carol in Prose; Being a Ghost Story of Christmas",
      "authors": [
        {"name": "Dickens, Charles", "birth_year": 1812, "death_year": 1870},
      ],
      "translators": [],
      "subjects": [
        "Christmas stories",
        "Ghost stories",
        "London (England) -- Fiction",
        "Misers -- Fiction",
        "Poor families -- Fiction",
        "Scrooge, Ebenezer (Fictitious character) -- Fiction",
        "Sick children -- Fiction",
      ],
      "bookshelves": ["Children's Literature", "Christmas"],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/46.html.images",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/46.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/46.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/46.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/46/46-0.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/46.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/46/pg46.cover.medium.jpg",
        "application/octet-stream":
            "https://www.gutenberg.org/files/46/46-0.zip",
      },
      "download_count": 9321,
    },
    {
      "id": 851,
      "title":
          "Narrative of the Captivity and Restoration of Mrs. Mary Rowlandson",
      "authors": [
        {
          "name": "Rowlandson, Mary White",
          "birth_year": null,
          "death_year": 1711,
        },
      ],
      "translators": [],
      "subjects": [
        "Indian captivities -- Massachusetts",
        "King Philip's War, 1675-1676",
        "Lancaster (Mass.) -- History -- Colonial period, ca. 1600-1775",
        "Massachusetts -- Biography",
        "Rowlandson, Mary White, approximately 1635-1711",
      ],
      "bookshelves": [],
      "languages": ["en"],
      "copyright": false,
      "media_type": "Text",
      "formats": {
        "text/html": "https://www.gutenberg.org/ebooks/851.html.images",
        "text/html; charset=us-ascii":
            "https://www.gutenberg.org/files/851/851-h/851-h.htm",
        "application/epub+zip":
            "https://www.gutenberg.org/ebooks/851.epub3.images",
        "application/x-mobipocket-ebook":
            "https://www.gutenberg.org/ebooks/851.kf8.images",
        "text/plain": "https://www.gutenberg.org/ebooks/851.txt.utf-8",
        "text/plain; charset=us-ascii":
            "https://www.gutenberg.org/files/851/851.txt",
        "application/rdf+xml": "https://www.gutenberg.org/ebooks/851.rdf",
        "image/jpeg":
            "https://www.gutenberg.org/cache/epub/851/pg851.cover.medium.jpg",
      },
      "download_count": 9206,
    },
  ];
}
