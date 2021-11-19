import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'form_record.g.dart';

abstract class FormRecord implements Built<FormRecord, FormRecordBuilder> {
  static Serializer<FormRecord> get serializer => _$formRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'ShopName')
  String get shopName;

  @nullable
  @BuiltValueField(wireName: 'Img1')
  String get img1;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FormRecordBuilder builder) => builder
    ..shopName = ''
    ..img1 = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('form');

  static Stream<FormRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FormRecord._();
  factory FormRecord([void Function(FormRecordBuilder) updates]) = _$FormRecord;

  static FormRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFormRecordData({
  String shopName,
  String img1,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        FormRecord.serializer,
        FormRecord((f) => f
          ..shopName = shopName
          ..img1 = img1
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
