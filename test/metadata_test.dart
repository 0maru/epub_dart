import 'package:flutter_test/flutter_test.dart';
import 'package:epub_dart/epub_dart.dart';

void main() {
  group('parse content.opf', () {
    const data = '''
<?xml version="1.0" encoding="utf-8"?>
<package xmlns="http://www.idpf.org/2007/opf" unique-identifier="BookID" version="3.0" xml:lang="ja">
  <metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
    <dc:identifier id="BookID">urn:uuid:f2478527-bca8-4b1d-88fc-987a2da438ce</dc:identifier>
    <meta refines="#BookID" property="identifier-type">uuid</meta>
    <dc:title id="title0">注文の多い料理店</dc:title>
    <dc:language id="language0">ja</dc:language>
    <dc:creator id="creator0">宮沢賢治</dc:creator>
    <meta refines="#creator0" property="role">aut</meta>
    <dc:publisher id="publisher0">株式会社内外プロセス</dc:publisher>
    <meta name="cover" content="images.cover.jpg" />
    <meta name="FUSEe" content="1.3.2" />
    <meta property="dcterms:modified">2014-05-30T09:00:00Z</meta>
  </metadata>
  <manifest>
    <item id="nav" href="text/nav.xhtml" media-type="application/xhtml+xml" properties="nav" />
    <item id="text.cover.xhtml" href="text/cover.xhtml" media-type="application/xhtml+xml" />
    <item id="text.t001001.xhtml" href="text/t001001.xhtml" media-type="application/xhtml+xml" />
    <item id="text.colophon.xhtml" href="text/colophon.xhtml" media-type="application/xhtml+xml" />
    <item id="images.cover.jpg" href="images/cover.jpg" media-type="image/jpeg" properties="cover-image" />
    <item id="style.style.css" href="style/style.css" media-type="text/css" />
    <item id="style.tcy.css" href="style/tcy.css" media-type="text/css" />
    <item id="style.nav.css" href="style/nav.css" media-type="text/css" />
  </manifest>
  <spine page-progression-direction="rtl">
    <itemref idref="text.cover.xhtml" linear="yes" />
    <itemref idref="text.t001001.xhtml" linear="yes" />
    <itemref idref="text.colophon.xhtml" linear="yes" />
  </spine>
  <guide>
    <reference type="cover" title="Cover Page" href="text/cover.xhtml" />
  </guide>
</package>
''';

    test('parse content.opf', () {
      final metadata = Metadata.fromString(data);
      expect(metadata, isNotNull);
      expect(metadata.docTitle, ['注文の多い料理店']);
    });
  });
}
