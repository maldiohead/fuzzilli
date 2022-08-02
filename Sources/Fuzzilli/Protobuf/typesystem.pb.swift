// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: typesystem.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Fuzzilli_Protobuf_Type {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var definiteType: UInt32 {
    get {return _storage._definiteType}
    set {_uniqueStorage()._definiteType = newValue}
  }

  public var possibleType: UInt32 {
    get {return _storage._possibleType}
    set {_uniqueStorage()._possibleType = newValue}
  }

  /// The extension can be encoded as an index, referring to the
  /// nth TypeExtension in the whole message. That way, it becomes
  /// possible to encode duplicate extensions only once.
  public var ext: OneOf_Ext? {
    get {return _storage._ext}
    set {_uniqueStorage()._ext = newValue}
  }

  public var extensionIdx: UInt32 {
    get {
      if case .extensionIdx(let v)? = _storage._ext {return v}
      return 0
    }
    set {_uniqueStorage()._ext = .extensionIdx(newValue)}
  }

  public var `extension`: Fuzzilli_Protobuf_TypeExtension {
    get {
      if case .extension(let v)? = _storage._ext {return v}
      return Fuzzilli_Protobuf_TypeExtension()
    }
    set {_uniqueStorage()._ext = .extension(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The extension can be encoded as an index, referring to the
  /// nth TypeExtension in the whole message. That way, it becomes
  /// possible to encode duplicate extensions only once.
  public enum OneOf_Ext: Equatable {
    case extensionIdx(UInt32)
    case `extension`(Fuzzilli_Protobuf_TypeExtension)

  #if !swift(>=4.1)
    public static func ==(lhs: Fuzzilli_Protobuf_Type.OneOf_Ext, rhs: Fuzzilli_Protobuf_Type.OneOf_Ext) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.extensionIdx, .extensionIdx): return {
        guard case .extensionIdx(let l) = lhs, case .extensionIdx(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.extension, .extension): return {
        guard case .extension(let l) = lhs, case .extension(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Fuzzilli_Protobuf_TypeExtension {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var properties: [String] {
    get {return _storage._properties}
    set {_uniqueStorage()._properties = newValue}
  }

  public var methods: [String] {
    get {return _storage._methods}
    set {_uniqueStorage()._methods = newValue}
  }

  public var group: String {
    get {return _storage._group}
    set {_uniqueStorage()._group = newValue}
  }

  public var signature: Fuzzilli_Protobuf_FunctionSignature {
    get {return _storage._signature ?? Fuzzilli_Protobuf_FunctionSignature()}
    set {_uniqueStorage()._signature = newValue}
  }
  /// Returns true if `signature` has been explicitly set.
  public var hasSignature: Bool {return _storage._signature != nil}
  /// Clears the value of `signature`. Subsequent reads from it will return its default value.
  public mutating func clearSignature() {_uniqueStorage()._signature = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Fuzzilli_Protobuf_FunctionSignature {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var parameters: [Fuzzilli_Protobuf_Parameter] {
    get {return _storage._parameters}
    set {_uniqueStorage()._parameters = newValue}
  }

  public var outputType: Fuzzilli_Protobuf_Type {
    get {return _storage._outputType ?? Fuzzilli_Protobuf_Type()}
    set {_uniqueStorage()._outputType = newValue}
  }
  /// Returns true if `outputType` has been explicitly set.
  public var hasOutputType: Bool {return _storage._outputType != nil}
  /// Clears the value of `outputType`. Subsequent reads from it will return its default value.
  public mutating func clearOutputType() {_uniqueStorage()._outputType = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Fuzzilli_Protobuf_Parameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var param: Fuzzilli_Protobuf_Parameter.OneOf_Param? = nil

  public var plainParameter: Fuzzilli_Protobuf_PlainParameter {
    get {
      if case .plainParameter(let v)? = param {return v}
      return Fuzzilli_Protobuf_PlainParameter()
    }
    set {param = .plainParameter(newValue)}
  }

  public var optionalParameter: Fuzzilli_Protobuf_OptionalParameter {
    get {
      if case .optionalParameter(let v)? = param {return v}
      return Fuzzilli_Protobuf_OptionalParameter()
    }
    set {param = .optionalParameter(newValue)}
  }

  public var restParameter: Fuzzilli_Protobuf_RestParameter {
    get {
      if case .restParameter(let v)? = param {return v}
      return Fuzzilli_Protobuf_RestParameter()
    }
    set {param = .restParameter(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Param: Equatable {
    case plainParameter(Fuzzilli_Protobuf_PlainParameter)
    case optionalParameter(Fuzzilli_Protobuf_OptionalParameter)
    case restParameter(Fuzzilli_Protobuf_RestParameter)

  #if !swift(>=4.1)
    public static func ==(lhs: Fuzzilli_Protobuf_Parameter.OneOf_Param, rhs: Fuzzilli_Protobuf_Parameter.OneOf_Param) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.plainParameter, .plainParameter): return {
        guard case .plainParameter(let l) = lhs, case .plainParameter(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.optionalParameter, .optionalParameter): return {
        guard case .optionalParameter(let l) = lhs, case .optionalParameter(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.restParameter, .restParameter): return {
        guard case .restParameter(let l) = lhs, case .restParameter(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

public struct Fuzzilli_Protobuf_PlainParameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var inputType: Fuzzilli_Protobuf_Type {
    get {return _inputType ?? Fuzzilli_Protobuf_Type()}
    set {_inputType = newValue}
  }
  /// Returns true if `inputType` has been explicitly set.
  public var hasInputType: Bool {return self._inputType != nil}
  /// Clears the value of `inputType`. Subsequent reads from it will return its default value.
  public mutating func clearInputType() {self._inputType = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _inputType: Fuzzilli_Protobuf_Type? = nil
}

public struct Fuzzilli_Protobuf_OptionalParameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var inputType: Fuzzilli_Protobuf_Type {
    get {return _inputType ?? Fuzzilli_Protobuf_Type()}
    set {_inputType = newValue}
  }
  /// Returns true if `inputType` has been explicitly set.
  public var hasInputType: Bool {return self._inputType != nil}
  /// Clears the value of `inputType`. Subsequent reads from it will return its default value.
  public mutating func clearInputType() {self._inputType = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _inputType: Fuzzilli_Protobuf_Type? = nil
}

public struct Fuzzilli_Protobuf_RestParameter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var inputType: Fuzzilli_Protobuf_Type {
    get {return _inputType ?? Fuzzilli_Protobuf_Type()}
    set {_inputType = newValue}
  }
  /// Returns true if `inputType` has been explicitly set.
  public var hasInputType: Bool {return self._inputType != nil}
  /// Clears the value of `inputType`. Subsequent reads from it will return its default value.
  public mutating func clearInputType() {self._inputType = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _inputType: Fuzzilli_Protobuf_Type? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "fuzzilli.protobuf"

extension Fuzzilli_Protobuf_Type: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Type"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "definiteType"),
    2: .same(proto: "possibleType"),
    3: .same(proto: "extensionIdx"),
    4: .same(proto: "extension"),
  ]

  fileprivate class _StorageClass {
    var _definiteType: UInt32 = 0
    var _possibleType: UInt32 = 0
    var _ext: Fuzzilli_Protobuf_Type.OneOf_Ext?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _definiteType = source._definiteType
      _possibleType = source._possibleType
      _ext = source._ext
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularUInt32Field(value: &_storage._definiteType) }()
        case 2: try { try decoder.decodeSingularUInt32Field(value: &_storage._possibleType) }()
        case 3: try {
          var v: UInt32?
          try decoder.decodeSingularUInt32Field(value: &v)
          if let v = v {
            if _storage._ext != nil {try decoder.handleConflictingOneOf()}
            _storage._ext = .extensionIdx(v)
          }
        }()
        case 4: try {
          var v: Fuzzilli_Protobuf_TypeExtension?
          var hadOneofValue = false
          if let current = _storage._ext {
            hadOneofValue = true
            if case .extension(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {
            if hadOneofValue {try decoder.handleConflictingOneOf()}
            _storage._ext = .extension(v)
          }
        }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if _storage._definiteType != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._definiteType, fieldNumber: 1)
      }
      if _storage._possibleType != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._possibleType, fieldNumber: 2)
      }
      switch _storage._ext {
      case .extensionIdx?: try {
        guard case .extensionIdx(let v)? = _storage._ext else { preconditionFailure() }
        try visitor.visitSingularUInt32Field(value: v, fieldNumber: 3)
      }()
      case .extension?: try {
        guard case .extension(let v)? = _storage._ext else { preconditionFailure() }
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }()
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_Type, rhs: Fuzzilli_Protobuf_Type) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._definiteType != rhs_storage._definiteType {return false}
        if _storage._possibleType != rhs_storage._possibleType {return false}
        if _storage._ext != rhs_storage._ext {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_TypeExtension: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TypeExtension"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "properties"),
    2: .same(proto: "methods"),
    3: .same(proto: "group"),
    4: .same(proto: "signature"),
  ]

  fileprivate class _StorageClass {
    var _properties: [String] = []
    var _methods: [String] = []
    var _group: String = String()
    var _signature: Fuzzilli_Protobuf_FunctionSignature? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _properties = source._properties
      _methods = source._methods
      _group = source._group
      _signature = source._signature
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeRepeatedStringField(value: &_storage._properties) }()
        case 2: try { try decoder.decodeRepeatedStringField(value: &_storage._methods) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._group) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._signature) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if !_storage._properties.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._properties, fieldNumber: 1)
      }
      if !_storage._methods.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._methods, fieldNumber: 2)
      }
      if !_storage._group.isEmpty {
        try visitor.visitSingularStringField(value: _storage._group, fieldNumber: 3)
      }
      try { if let v = _storage._signature {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_TypeExtension, rhs: Fuzzilli_Protobuf_TypeExtension) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._properties != rhs_storage._properties {return false}
        if _storage._methods != rhs_storage._methods {return false}
        if _storage._group != rhs_storage._group {return false}
        if _storage._signature != rhs_storage._signature {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_FunctionSignature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FunctionSignature"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parameters"),
    2: .same(proto: "outputType"),
  ]

  fileprivate class _StorageClass {
    var _parameters: [Fuzzilli_Protobuf_Parameter] = []
    var _outputType: Fuzzilli_Protobuf_Type? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _parameters = source._parameters
      _outputType = source._outputType
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeRepeatedMessageField(value: &_storage._parameters) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._outputType) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if !_storage._parameters.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._parameters, fieldNumber: 1)
      }
      try { if let v = _storage._outputType {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_FunctionSignature, rhs: Fuzzilli_Protobuf_FunctionSignature) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._parameters != rhs_storage._parameters {return false}
        if _storage._outputType != rhs_storage._outputType {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_Parameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Parameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "plainParameter"),
    2: .same(proto: "optionalParameter"),
    3: .same(proto: "restParameter"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Fuzzilli_Protobuf_PlainParameter?
        var hadOneofValue = false
        if let current = self.param {
          hadOneofValue = true
          if case .plainParameter(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.param = .plainParameter(v)
        }
      }()
      case 2: try {
        var v: Fuzzilli_Protobuf_OptionalParameter?
        var hadOneofValue = false
        if let current = self.param {
          hadOneofValue = true
          if case .optionalParameter(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.param = .optionalParameter(v)
        }
      }()
      case 3: try {
        var v: Fuzzilli_Protobuf_RestParameter?
        var hadOneofValue = false
        if let current = self.param {
          hadOneofValue = true
          if case .restParameter(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.param = .restParameter(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.param {
    case .plainParameter?: try {
      guard case .plainParameter(let v)? = self.param else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .optionalParameter?: try {
      guard case .optionalParameter(let v)? = self.param else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .restParameter?: try {
      guard case .restParameter(let v)? = self.param else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_Parameter, rhs: Fuzzilli_Protobuf_Parameter) -> Bool {
    if lhs.param != rhs.param {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_PlainParameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PlainParameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "inputType"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._inputType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._inputType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_PlainParameter, rhs: Fuzzilli_Protobuf_PlainParameter) -> Bool {
    if lhs._inputType != rhs._inputType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_OptionalParameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OptionalParameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "inputType"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._inputType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._inputType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_OptionalParameter, rhs: Fuzzilli_Protobuf_OptionalParameter) -> Bool {
    if lhs._inputType != rhs._inputType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Fuzzilli_Protobuf_RestParameter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RestParameter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "inputType"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._inputType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._inputType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Fuzzilli_Protobuf_RestParameter, rhs: Fuzzilli_Protobuf_RestParameter) -> Bool {
    if lhs._inputType != rhs._inputType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
