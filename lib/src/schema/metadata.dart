import 'package:xml/xml.dart';

import 'package:epub_dart/src/schema/meta.dart';

/// doc: https://www.w3.org/TR/epub-33/#sec-metadata-elem
class Metadata {
  final List<String> docIdentifier;
  final List<String> docTitle;
  final List<String> docLanguage;
  final List<String> docContributor;
  final List<String> docCoverage;
  final List<String> docCreator;
  final List<String> docDate;
  final List<String> docDescription;
  final List<String> docFormat;
  final List<String> docPublisher;
  final List<String> docRelation;
  final List<String> docRights;
  final List<String> docSource;
  final List<String> docSubject;
  final List<String> docType;
  final Meta meta;

  Metadata(
    this.docIdentifier,
    this.docTitle,
    this.docLanguage,
    this.docContributor,
    this.docCoverage,
    this.docCreator,
    this.docDate,
    this.docDescription,
    this.docFormat,
    this.docPublisher,
    this.docRelation,
    this.docRights,
    this.docSource,
    this.docSubject,
    this.docType,
    this.meta,
  );

  static Metadata fromString(String data) {
    final document = XmlDocument.parse(data);
    return Metadata(
      [],
      document.findAllElements('dc:title').map((e) => e.innerText).toList(),
      [],
      [],
      [],
      [],
      [],
      [],
      [],
      [],
      [],
      [],
      [],
      [],
      [],
      Meta(
        'metaDir',
        'metaId',
        'metaProperty',
        'metaRefines',
        'metaScheme',
        'metaXmlLang',
      ),
    );
  }
}
