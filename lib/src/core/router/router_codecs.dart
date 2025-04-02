part of 'router.dart';

/// Custom codec for serializing and deserializing EventEntity objects when navigating
final extraCodec = _EventEntityCodec();

/// Custom codec implementation for EventEntity
class _EventEntityCodec extends Codec<Object?, Object?> {
  @override
  Converter<Object?, Object?> get decoder => _EventEntityDecoder();

  @override
  Converter<Object?, Object?> get encoder => _EventEntityEncoder();
}

class _EventEntityEncoder extends Converter<Object?, Object?> {
  @override
  Object? convert(Object? input) {
    // Convert EventEntity to JSON map with type marker
    if (input is EventEntity) {
      final map = input.toJson();
      map['_type'] = 'EventEntity';
      return map;
    }
    return input;
  }
}

class _EventEntityDecoder extends Converter<Object?, Object?> {
  @override
  Object? convert(Object? input) {
    // Convert JSON map back to EventEntity
    if (input is Map<String, dynamic> && input['_type'] == 'EventEntity') {
      // Remove the type marker before conversion
      final map = Map<String, dynamic>.from(input);
      map.remove('_type');
      return EventEntity.fromJson(map);
    }
    return input;
  }
}
