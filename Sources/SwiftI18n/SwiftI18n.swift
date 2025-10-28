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
    case create = "@Create"
    case system = "@System"
    case share = "@Share"
    case import_ = "@Import"
    case export = "@Export"
    case open = "@Open"
    case close = "@Close"

    // 导航相关
    case back = "@Back"
    case forward = "@Forward"
    case home = "@Home"
    case menu = "@Menu"
    case minimize = "@Minimize"
    case maximize = "@Maximize"
    case settings = "@Settings"
    case profile = "@Profile"
    case notifications = "@Notifications"

    // 用户交互相关
    case save = "@Save"
    case saveAs = "@SaveAs"
    case load = "@Load"
    case upload = "@Upload"
    case download = "@Download"
    case refresh = "@Refresh"
    case add = "@Add"
    case update = "@Update"
    case copy = "@Copy"
    case paste = "@Paste"
    case cut = "@Cut"
    case selectAll = "@SelectAll"
    case deselectAll = "@DeselectAll"

    // 状态相关
    case success = "@Success"
    case error = "@Error"
    case warning = "@Warning"
    case info = "@Info"
    case pending = "@Pending"
    case loading = "@Loading"
    case retry = "@Retry"
    case skip = "@Skip"
    case continue_ = "@Continue"

    public var defaultSystemImage: String {
        switch self {
        case .done: return "checkmark"
        case .cancel: return "xmark"
        case .confirm: return "checkmark"
        case .quit: return "xmark"
        case .edit: return "pencil"
        case .open: return "arrow.up.right"
        case .close: return "xmark"
        case .delete: return "trash"
        case .remove: return "minus"
        case .reset: return "arrow.clockwise"
        case .clear: return "trash"
        case .search: return "magnifyingglass"
        case .filter: return "line.3.horizontal.decrease"
        case .sort: return "arrow.up.arrow.down"
        case .more: return "ellipsis"
        case .less: return "minus"
        case .create: return "doc"
        case .system: return "gearshape"
        case .share: return "square.and.arrow.up"
        case .import_: return "arrow.down.to.line.alt"
        case .export: return "arrow.up.to.line.alt"
        // 导航相关图标
        case .back: return "chevron.backward"
        case .forward: return "chevron.forward"
        case .home: return "house"
        case .menu: return "list.bullet"
        case .minimize: return "minus"
        case .maximize: return "plus"
        case .settings: return "gearshape"
        case .profile: return "person"
        case .notifications: return "bell"
        // 用户交互相关图标
        case .save: return "square.and.arrow.down"
        case .saveAs: return "square.and.arrow.down.on.square"
        case .load: return "square.and.arrow.up"
        case .upload: return "arrow.up"
        case .download: return "arrow.down"
        case .refresh: return "arrow.clockwise"
        case .add: return "plus"
        case .update: return "arrow.up.right"
        case .copy: return "doc.on.doc"
        case .paste: return "document.on.clipboard"
        case .cut: return "scissors"
        case .selectAll: return "checkmark.square"
        case .deselectAll: return "minus.square"
        // 状态相关图标
        case .success: return "checkmark"
        case .error: return "xmark"
        case .warning: return "exclamationmark.triangle"
        case .info: return "info"
        case .pending: return "clock"
        case .loading: return "gear"
        case .retry: return "arrow.clockwise"
        case .skip: return "arrow.right"
        case .continue_: return "arrow.right.to.line"
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
