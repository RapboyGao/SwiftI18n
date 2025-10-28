import Foundation
import SwiftUI

// The Swift Programming Language
// https://docs.swift.org/swift-book
public enum SwiftI18n: String, Codable, Sendable, Hashable, CustomStringConvertible {
    case done = "@Done"
    case cancel = "@Cancel"
    case confirm = "@Confirm"
    case quit = "@Quit"
    case edit = "@Edit"
    case delete = "@Delete"
    case remove = "@Remove"
    case reset = "@Reset"
    case clear = "@Clear"
    case search = "@Search"
    case filter = "@Filter"
    case sort = "@Sort"
    case more = "@More"
    case less = "@Less"
    case required = "@Required"
    case invalid = "@Invalid"
    case unknown = "@Unknown"
    case get = "@Get"
    case common = "@Common"
    case communication = "@Communication"
    case network = "@Network"
    case storage = "@Storage"
    case database = "@Database"
    case file = "@File"
    case system = "@System"
    case share = "@Share"
    case import_ = "@Import"
    case export = "@Export"

    public var description: String {
        NSLocalizedString(rawValue, bundle: .module, comment: "The text shown on the button of \(rawValue)")
    }

    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    public var text: Text {
        Text(description)
    }

    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    public func button(action: @escaping () -> Void) -> some View {
        Button(description, action: action)
    }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    public func button(systemImage: String, action: @escaping () -> Void) -> some View {
        Button(description, systemImage: systemImage, action: action)
    }
}
