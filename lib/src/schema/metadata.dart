import 'package:epub_dart/src/schema/meta.dart';

import '../content_parser.dart';

/// doc: https://www.w3.org/TR/epub-33/#sec-metadata-elem
class Metadata {
  /// doc:title
  final String title;

  /// doc:description
  final String description;

  /// doc:creator
  final String creator;

  /// doc:publisher
  final String publisher;

  /// doc:identifier
  final String identifier;

  /// doc:language
  final String language;

  /// doc:contributor
  final String contributor;

  /// doc:coverage
  final String coverage;

  /// doc:date
  final String date;

  /// doc:format
  final String format;

  /// doc:relation
  final String relation;

  ///
  final String rights;

  ///
  final String source;

  ///
  final String subject;

  ///
  final String type;

  ///
  final Meta meta;

  Metadata({
    required this.title,
    required this.description,
    required this.creator,
    required this.publisher,
    required this.identifier,
    required this.language,
    required this.contributor,
    required this.coverage,
    required this.date,
    required this.format,
    required this.relation,
    required this.rights,
    required this.source,
    required this.subject,
    required this.type,
    required this.meta,
  });

  static Metadata fromString(String data) {
    final parser = ContentParser(data);
    return Metadata(
      title: parser.getMetaElementProperty('dc:title'),
      description: parser.getMetaElementProperty('dc:description'),
      identifier: parser.getMetaElementProperty('dc:identifier'),
      language: parser.getMetaElementProperty('dc:language'),
      contributor: parser.getMetaElementProperty('dc:contributor'),
      creator: parser.getMetaElementProperty('dc:creator'),
      date: parser.getMetaElementProperty('dc:date'),
      format: parser.getMetaElementProperty('dc:format'),
      publisher: parser.getMetaElementProperty('dc:publisher'),
      relation: parser.getMetaElementProperty('dc:relation'),
      rights: parser.getMetaElementProperty('dc:rights'),
      source: parser.getMetaElementProperty('dc:source'),
      subject: parser.getMetaElementProperty('dc:subject'),
      type: parser.getMetaElementProperty('dc:type'),
      coverage: parser.getMetaElementProperty('doc:coverage'),
      meta: Meta(
        dir: 'metaDir',
        id: 'metaId',
        property: 'metaProperty',
        refines: 'metaRefines',
        scheme: 'metaScheme',
        xmlLang: 'metaXmlLang',
      ),
    );
  }
}
