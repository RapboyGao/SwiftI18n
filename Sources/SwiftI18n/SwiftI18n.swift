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
    
    // 导航相关
    case back = "@Back"
    case forward = "@Forward"
    case home = "@Home"
    case menu = "@Menu"
    case close = "@Close"
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
    case create = "@Create"
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
        
        // 导航相关图标
        case .back: return "chevron.backward.circle.fill"
        case .forward: return "chevron.forward.circle.fill"
        case .home: return "house.circle.fill"
        case .menu: return "list.bullet.circle.fill"
        case .close: return "xmark.circle.fill"
        case .minimize: return "minus.circle.fill"
        case .maximize: return "plus.circle.fill"
        case .settings: return "gearshape.circle.fill"
        case .profile: return "person.circle.fill"
        case .notifications: return "bell.circle.fill"
        
        // 用户交互相关图标
        case .save: return "square.and.arrow.down.circle.fill"
        case .saveAs: return "square.and.arrow.down.on.square.fill"
        case .load: return "square.and.arrow.up.circle.fill"
        case .upload: return "arrow.up.circle.fill"
        case .download: return "arrow.down.circle.fill"
        case .refresh: return "arrow.clockwise.circle.fill"
        case .add: return "plus.circle.fill"
        case .create: return "square.and.pencil.circle.fill"
        case .update: return "arrow.up.right.circle.fill"
        case .copy: return "doc.on.doc.circle.fill"
        case .paste: return "doc.paste.circle.fill"
        case .cut: return "scissors.circle.fill"
        case .selectAll: return "select.all.circle.fill"
        case .deselectAll: return "deselect.all.circle.fill"
        
        // 状态相关图标
        case .success: return "checkmark.circle.fill"
        case .error: return "xmark.circle.fill"
        case .warning: return "exclamationmark.triangle.fill"
        case .info: return "info.circle.fill"
        case .pending: return "clock.circle.fill"
        case .loading: return "gear.circle.fill"
        case .retry: return "arrow.clockwise.circle.fill"
        case .skip: return "arrow.right.circle.fill"
        case .continue_: return "arrow.right.to.line.circle.fill"
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

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    public func buttonWithDefaultImage(action: @escaping () -> Void) -> some View {
        Button(description, systemImage: defaultSystemImage, action: action)
    }

}
