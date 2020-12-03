// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountEventTearOff {
  const _$AccountEventTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }

// ignore: unused_element
  Created created(
      {@required String name,
      @required String ethAddress,
      @required String metaName,
      @required File image}) {
    return Created(
      name: name,
      ethAddress: ethAddress,
      metaName: metaName,
      image: image,
    );
  }

// ignore: unused_element
  Updated updated(
      {@required String ethAddress,
      @required String metaName,
      @required File image}) {
    return Updated(
      ethAddress: ethAddress,
      metaName: metaName,
      image: image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountEvent = _$AccountEventTearOff();

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult created(
            String name, String ethAddress, String metaName, File image),
    @required TResult updated(String ethAddress, String metaName, File image),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult created(
        String name, String ethAddress, String metaName, File image),
    TResult updated(String ethAddress, String metaName, File image),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult created(Created value),
    @required TResult updated(Updated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult created(Created value),
    TResult updated(Updated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;
}

/// @nodoc
class _$Initialized extends Initialized {
  const _$Initialized() : super._();

  @override
  String toString() {
    return 'AccountEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult created(
            String name, String ethAddress, String metaName, File image),
    @required TResult updated(String ethAddress, String metaName, File image),
  }) {
    assert(initialized != null);
    assert(created != null);
    assert(updated != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult created(
        String name, String ethAddress, String metaName, File image),
    TResult updated(String ethAddress, String metaName, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult created(Created value),
    @required TResult updated(Updated value),
  }) {
    assert(initialized != null);
    assert(created != null);
    assert(updated != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult created(Created value),
    TResult updated(Updated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized extends AccountEvent {
  const Initialized._() : super._();
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class $CreatedCopyWith<$Res> {
  factory $CreatedCopyWith(Created value, $Res Function(Created) then) =
      _$CreatedCopyWithImpl<$Res>;
  $Res call({String name, String ethAddress, String metaName, File image});
}

/// @nodoc
class _$CreatedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements $CreatedCopyWith<$Res> {
  _$CreatedCopyWithImpl(Created _value, $Res Function(Created) _then)
      : super(_value, (v) => _then(v as Created));

  @override
  Created get _value => super._value as Created;

  @override
  $Res call({
    Object name = freezed,
    Object ethAddress = freezed,
    Object metaName = freezed,
    Object image = freezed,
  }) {
    return _then(Created(
      name: name == freezed ? _value.name : name as String,
      ethAddress:
          ethAddress == freezed ? _value.ethAddress : ethAddress as String,
      metaName: metaName == freezed ? _value.metaName : metaName as String,
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$Created extends Created {
  const _$Created(
      {@required this.name,
      @required this.ethAddress,
      @required this.metaName,
      @required this.image})
      : assert(name != null),
        assert(ethAddress != null),
        assert(metaName != null),
        assert(image != null),
        super._();

  @override
  final String name;
  @override
  final String ethAddress;
  @override
  final String metaName;
  @override
  final File image;

  @override
  String toString() {
    return 'AccountEvent.created(name: $name, ethAddress: $ethAddress, metaName: $metaName, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Created &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ethAddress, ethAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ethAddress, ethAddress)) &&
            (identical(other.metaName, metaName) ||
                const DeepCollectionEquality()
                    .equals(other.metaName, metaName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ethAddress) ^
      const DeepCollectionEquality().hash(metaName) ^
      const DeepCollectionEquality().hash(image);

  @override
  $CreatedCopyWith<Created> get copyWith =>
      _$CreatedCopyWithImpl<Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult created(
            String name, String ethAddress, String metaName, File image),
    @required TResult updated(String ethAddress, String metaName, File image),
  }) {
    assert(initialized != null);
    assert(created != null);
    assert(updated != null);
    return created(name, ethAddress, metaName, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult created(
        String name, String ethAddress, String metaName, File image),
    TResult updated(String ethAddress, String metaName, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created(name, ethAddress, metaName, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult created(Created value),
    @required TResult updated(Updated value),
  }) {
    assert(initialized != null);
    assert(created != null);
    assert(updated != null);
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult created(Created value),
    TResult updated(Updated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class Created extends AccountEvent {
  const Created._() : super._();
  const factory Created(
      {@required String name,
      @required String ethAddress,
      @required String metaName,
      @required File image}) = _$Created;

  String get name;
  String get ethAddress;
  String get metaName;
  File get image;
  $CreatedCopyWith<Created> get copyWith;
}

/// @nodoc
abstract class $UpdatedCopyWith<$Res> {
  factory $UpdatedCopyWith(Updated value, $Res Function(Updated) then) =
      _$UpdatedCopyWithImpl<$Res>;
  $Res call({String ethAddress, String metaName, File image});
}

/// @nodoc
class _$UpdatedCopyWithImpl<$Res> extends _$AccountEventCopyWithImpl<$Res>
    implements $UpdatedCopyWith<$Res> {
  _$UpdatedCopyWithImpl(Updated _value, $Res Function(Updated) _then)
      : super(_value, (v) => _then(v as Updated));

  @override
  Updated get _value => super._value as Updated;

  @override
  $Res call({
    Object ethAddress = freezed,
    Object metaName = freezed,
    Object image = freezed,
  }) {
    return _then(Updated(
      ethAddress:
          ethAddress == freezed ? _value.ethAddress : ethAddress as String,
      metaName: metaName == freezed ? _value.metaName : metaName as String,
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$Updated extends Updated {
  const _$Updated(
      {@required this.ethAddress,
      @required this.metaName,
      @required this.image})
      : assert(ethAddress != null),
        assert(metaName != null),
        assert(image != null),
        super._();

  @override
  final String ethAddress;
  @override
  final String metaName;
  @override
  final File image;

  @override
  String toString() {
    return 'AccountEvent.updated(ethAddress: $ethAddress, metaName: $metaName, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Updated &&
            (identical(other.ethAddress, ethAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ethAddress, ethAddress)) &&
            (identical(other.metaName, metaName) ||
                const DeepCollectionEquality()
                    .equals(other.metaName, metaName)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ethAddress) ^
      const DeepCollectionEquality().hash(metaName) ^
      const DeepCollectionEquality().hash(image);

  @override
  $UpdatedCopyWith<Updated> get copyWith =>
      _$UpdatedCopyWithImpl<Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required
        TResult created(
            String name, String ethAddress, String metaName, File image),
    @required TResult updated(String ethAddress, String metaName, File image),
  }) {
    assert(initialized != null);
    assert(created != null);
    assert(updated != null);
    return updated(ethAddress, metaName, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult created(
        String name, String ethAddress, String metaName, File image),
    TResult updated(String ethAddress, String metaName, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(ethAddress, metaName, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult created(Created value),
    @required TResult updated(Updated value),
  }) {
    assert(initialized != null);
    assert(created != null);
    assert(updated != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult created(Created value),
    TResult updated(Updated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated extends AccountEvent {
  const Updated._() : super._();
  const factory Updated(
      {@required String ethAddress,
      @required String metaName,
      @required File image}) = _$Updated;

  String get ethAddress;
  String get metaName;
  File get image;
  $UpdatedCopyWith<Updated> get copyWith;
}
