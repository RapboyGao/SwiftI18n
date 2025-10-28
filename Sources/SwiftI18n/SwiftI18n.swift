import Foundation
import SwiftUI

// The Swift Programming Language
// https://docs.swift.org/swift-book
public enum SwiftI18n: String, Codable, Sendable, Hashable, CaseIterable, CustomStringConvertible,
    Identifiable
{
    public var id: SwiftI18n { self }

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

    public var defaultSystemImage: String {
        switch self {
        case .done: return "checkmark.circle.fill"
        case .cancel: return "xmark.circle.fill"
        case .confirm: return "checkmark.circle.fill"
        case .quit: return "xmark.circle.fill"
        case .edit: return "pencil.circle.fill"
        case .delete: return "trash.circle.fill"
        case .remove: return "minus.circle.fill"
        case .reset: return "arrow.clockwise.circle.fill"
        case .clear: return "trash.circle.fill"
        case .search: return "magnifyingglass.circle.fill"
        case .filter: return "line.3.horizontal.decrease.circle.fill"
        case .sort: return "arrow.up.arrow.down.circle.fill"
        case .more: return "ellipsis.circle.fill"
        case .less: return "minus.circle.fill"
        case .required: return "exclamationmark.circle.fill"
        case .invalid: return "exclamationmark.circle.fill"
        case .unknown: return "questionmark.circle.fill"
        case .get: return "arrow.down.circle.fill"
        case .common: return "textformat.123"
        case .communication: return "phone.fill"
        case .network: return "wifi.fill"
        case .storage: return "harddrive.fill"
        case .database: return "database.fill"
        case .file: return "doc.fill"
        case .system: return "gearshape.fill"
        case .share: return "square.and.arrow.up.fill"
        case .import_: return "arrow.down.to.line.alt.fill"
        case .export: return "arrow.up.to.line.alt.fill"
        }
    }

    public var description: String {
        NSLocalizedString(
            rawValue, bundle: .module, comment: "The text shown on the button of \(rawValue)")
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
