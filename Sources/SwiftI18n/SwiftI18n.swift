import Foundation
import SwiftUI

/// The SwiftI18n enum represents a set of predefined internationalization keys for common user interface elements.
///
/// Each case in the enum corresponds to a specific internationalization key. The keys are used to localize
/// user interface elements such as buttons, labels, and alerts in different languages.
///
/// The enum conforms to the `Codable`, `Sendable`, `Hashable`, `CaseIterable`, `CustomStringConvertible`,
/// and `Identifiable` protocols, allowing for easy encoding, decoding, iteration, and identification of cases.
public enum SwiftI18n: String, Codable, Sendable, Hashable, CaseIterable, CustomStringConvertible,
    Identifiable
{
    public var id: SwiftI18n { self }

    case add = "@Add"
    case back = "@Back"
    case cancel = "@Cancel"
    case clear = "@Clear"
    case close = "@Close"
    case confirm = "@Confirm"
    case continue_ = "@Continue"
    case copy = "@Copy"
    case create = "@Create"
    case cut = "@Cut"
    case delete = "@Delete"
    case deselectAll = "@DeselectAll"
    case done = "@Done"
    case download = "@Download"
    case edit = "@Edit"
    case error = "@Error"
    case export = "@Export"
    case filter = "@Filter"
    case forward = "@Forward"
    case home = "@Home"
    case import_ = "@Import"
    case info = "@Info"
    case less = "@Less"
    case load = "@Load"
    case loading = "@Loading"
    case maximize = "@Maximize"
    case menu = "@Menu"
    case minimize = "@Minimize"
    case more = "@More"
    case notifications = "@Notifications"
    case open = "@Open"
    case paste = "@Paste"
    case pending = "@Pending"
    case profile = "@Profile"
    case quit = "@Quit"
    case refresh = "@Refresh"
    case remove = "@Remove"
    case reset = "@Reset"
    case retry = "@Retry"
    case save = "@Save"
    case saveAs = "@SaveAs"
    case search = "@Search"
    case selectAll = "@SelectAll"
    case settings = "@Settings"
    case share = "@Share"
    case skip = "@Skip"
    case sort = "@Sort"
    case success = "@Success"
    case system = "@System"
    case update = "@Update"
    case upload = "@Upload"
    case warning = "@Warning"

    public var defaultSystemImage: String {
        switch self {
        case .add: return "plus"
        case .back: return "chevron.backward"
        case .cancel: return "xmark"
        case .clear: return "trash"
        case .close: return "xmark"
        case .confirm: return "checkmark"
        case .continue_: return "arrow.right.to.line"
        case .copy: return "doc.on.doc"
        case .create: return "doc"
        case .cut: return "scissors"
        case .delete: return "trash"
        case .deselectAll: return "minus.square"
        case .done: return "checkmark"
        case .download: return "arrow.down"
        case .edit: return "pencil"
        case .error: return "xmark"
        case .export: return "arrow.up.to.line.alt"
        case .filter: return "line.3.horizontal.decrease"
        case .forward: return "chevron.forward"
        case .home: return "house"
        case .import_: return "arrow.down.to.line.alt"
        case .info: return "info"
        case .less: return "minus"
        case .load: return "square.and.arrow.up"
        case .loading: return "gear"
        case .maximize: return "plus"
        case .menu: return "list.bullet"
        case .minimize: return "minus"
        case .more: return "ellipsis"
        case .notifications: return "bell"
        case .open: return "arrow.up.right"
        case .paste: return "document.on.clipboard"
        case .pending: return "clock"
        case .profile: return "person"
        case .quit: return "xmark"
        case .refresh: return "arrow.clockwise"
        case .remove: return "minus"
        case .reset: return "arrow.clockwise"
        case .retry: return "arrow.clockwise"
        case .save: return "square.and.arrow.down"
        case .saveAs: return "square.and.arrow.down.on.square"
        case .search: return "magnifyingglass"
        case .selectAll: return "checkmark.square"
        case .settings: return "gearshape"
        case .share: return "square.and.arrow.up"
        case .skip: return "arrow.right"
        case .sort: return "arrow.up.arrow.down"
        case .success: return "checkmark"
        case .system: return "gearshape"
        case .update: return "arrow.up.right"
        case .upload: return "arrow.up"
        case .warning: return "exclamationmark.triangle"
        }
    }

    public var description: String {
        // Use main bundle instead of module bundle since we don't have resources
        // This ensures the app can still build properly
        NSLocalizedString(
            rawValue, bundle: Bundle.main, comment: "The text shown on the button of \(rawValue)")
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

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    public func buttonWithDefaultImage(action: @escaping () -> Void) -> some View {
        Button(description, systemImage: defaultSystemImage, action: action)
    }
}
