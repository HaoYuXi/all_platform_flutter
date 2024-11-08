// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUserHash() => r'9614e948b319b6eb05487aa7af8f47df8c73750c';

/// See also [getUser].
@ProviderFor(getUser)
final getUserProvider = AutoDisposeFutureProvider<UserInfoState>.internal(
  getUser,
  name: r'getUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetUserRef = AutoDisposeFutureProviderRef<UserInfoState>;
String _$userInfoHash() => r'0c52b1236cff4e03b994220b3e3b4c86ed206677';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UserInfo
    extends BuildlessAutoDisposeAsyncNotifier<UserInfoState> {
  late final String userName;
  late final int age;

  FutureOr<UserInfoState> build(
    String userName,
    int age,
  );
}

/// See also [UserInfo].
@ProviderFor(UserInfo)
const userInfoProvider = UserInfoFamily();

/// See also [UserInfo].
class UserInfoFamily extends Family<AsyncValue<UserInfoState>> {
  /// See also [UserInfo].
  const UserInfoFamily();

  /// See also [UserInfo].
  UserInfoProvider call(
    String userName,
    int age,
  ) {
    return UserInfoProvider(
      userName,
      age,
    );
  }

  @override
  UserInfoProvider getProviderOverride(
    covariant UserInfoProvider provider,
  ) {
    return call(
      provider.userName,
      provider.age,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userInfoProvider';
}

/// See also [UserInfo].
class UserInfoProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserInfo, UserInfoState> {
  /// See also [UserInfo].
  UserInfoProvider(
    String userName,
    int age,
  ) : this._internal(
          () => UserInfo()
            ..userName = userName
            ..age = age,
          from: userInfoProvider,
          name: r'userInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userInfoHash,
          dependencies: UserInfoFamily._dependencies,
          allTransitiveDependencies: UserInfoFamily._allTransitiveDependencies,
          userName: userName,
          age: age,
        );

  UserInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.age,
  }) : super.internal();

  final String userName;
  final int age;

  @override
  FutureOr<UserInfoState> runNotifierBuild(
    covariant UserInfo notifier,
  ) {
    return notifier.build(
      userName,
      age,
    );
  }

  @override
  Override overrideWith(UserInfo Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserInfoProvider._internal(
        () => create()
          ..userName = userName
          ..age = age,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
        age: age,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserInfo, UserInfoState>
      createElement() {
    return _UserInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserInfoProvider &&
        other.userName == userName &&
        other.age == age;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, age.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserInfoRef on AutoDisposeAsyncNotifierProviderRef<UserInfoState> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `age` of this provider.
  int get age;
}

class _UserInfoProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserInfo, UserInfoState>
    with UserInfoRef {
  _UserInfoProviderElement(super.provider);

  @override
  String get userName => (origin as UserInfoProvider).userName;
  @override
  int get age => (origin as UserInfoProvider).age;
}

String _$userAvatarHash() => r'0ae650f095fac30f91b4b922e268418c1f1e77e2';

/// See also [UserAvatar].
@ProviderFor(UserAvatar)
final userAvatarProvider =
    AutoDisposeNotifierProvider<UserAvatar, MyState>.internal(
  UserAvatar.new,
  name: r'userAvatarProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userAvatarHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserAvatar = AutoDisposeNotifier<MyState>;
String _$loggedHash() => r'b1bc2177e639a652aacb152a96bcd0220164433d';

/// See also [Logged].
@ProviderFor(Logged)
final loggedProvider = AutoDisposeAsyncNotifierProvider<Logged, bool>.internal(
  Logged.new,
  name: r'loggedProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loggedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Logged = AutoDisposeAsyncNotifier<bool>;
String _$delayedAcquisitionHash() =>
    r'21bcbeacb0a048b71b228cbe4771a8ea8d4c6da7';

/// See also [DelayedAcquisition].
@ProviderFor(DelayedAcquisition)
final delayedAcquisitionProvider =
    AutoDisposeAsyncNotifierProvider<DelayedAcquisition, int>.internal(
  DelayedAcquisition.new,
  name: r'delayedAcquisitionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$delayedAcquisitionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DelayedAcquisition = AutoDisposeAsyncNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
