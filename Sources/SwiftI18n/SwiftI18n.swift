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
    /// 添加
    case add = "@Add"
    /// 返回
    case back = "@Back"
    /// 取消
    case cancel = "@Cancel"
    /// 清除
    case clear = "@Clear"
    /// 关闭
    case close = "@Close"
    /// 配置
    case configure = "@Configure"
    /// 确认
    case confirm = "@Confirm"
    /// 继续
    case continue_ = "@Continue"
    /// 拷贝
    case copy = "@Copy"
    /// 创建
    case create = "@Create"
    /// 剪切
    case cut = "@Cut"
    /// 删除
    case delete = "@Delete"
    /// 取消选择所有
    case deselectAll = "@DeselectAll"
    /// 完成
    case done = "@Done"
    /// 下载
    case download = "@Download"
    /// 编辑
    case edit = "@Edit"
    /// 错误
    case error = "@Error"
    /// 导出
    case export = "@Export"
    /// 筛选
    case filter = "@Filter"
    /// 转发
    case forward = "@Forward"
    /// 主页
    case home = "@Home"
    /// 导入
    case import_ = "@Import"
    /// 信息
    case info = "@Info"
    /// 更少
    case less = "@Less"
    /// 加载
    case load = "@Load"
    /// 加载中
    case loading = "@Loading"
    /// 最大化
    case maximize = "@Maximize"
    /// 菜单
    case menu = "@Menu"
    /// 最小化
    case minimize = "@Minimize"
    /// 更多
    case more = "@More"
    /// 通知
    case notifications = "@Notifications"
    /// 打开
    case open = "@Open"
    /// 粘贴
    case paste = "@Paste"
    /// 待处理
    case pending = "@Pending"
    /// 个人资料
    case profile = "@Profile"
    /// 退出
    case quit = "@Quit"
    /// 刷新
    case refresh = "@Refresh"
    /// 删除
    case remove = "@Remove"
    /// 重置
    case reset = "@Reset"
    /// 重试
    case retry = "@Retry"
    /// 保存
    case save = "@Save"
    /// 另存为
    case saveAs = "@SaveAs"
    /// 搜索
    case search = "@Search"
    /// 选择所有
    case selectAll = "@SelectAll"
    /// 发送
    case send = "@Send"
    /// 设置
    case settings = "@Settings"
    /// 分享
    case share = "@Share"
    /// 跳过
    case skip = "@Skip"
    /// 排序
    case sort = "@Sort"
    /// 成功
    case success = "@Success"
    /// 系统
    case system = "@System"
    /// 更新
    case update = "@Update"
    /// 上传
    case upload = "@Upload"
    /// 警告
    case warning = "@Warning"

    /// A list of all supported languages for internationalization.
    ///
    /// This property returns an array of strings representing the supported languages.
    /// The languages are determined by the available language bundles in the bundle's resource path.
    ///
    /// - Returns: An array of strings representing the supported languages.
    public static let allSupportedLanguages: [String] = {
        guard let bundlePath = Bundle.module.resourcePath else {
            return []
        }
        // 查找所有可用的语言包
        let fileManager = FileManager.default
        guard let contents = try? fileManager.contentsOfDirectory(atPath: bundlePath) else {
            return []
        }
        let languageBundles = contents.filter { $0.hasSuffix(".lproj") }
        let languages = languageBundles.map { String($0.dropLast(6)) }
        return languages
    }()

    /// The default system image for the current case.
    ///
    /// This property returns the default system image name for the current case.
    /// The system image names are used to represent the action or state of the case in a user interface.
    ///
    /// - Returns: The default system image name for the current case.
    public var defaultSystemImage: String {
        switch self {
        case .add: return "plus"
        case .back: return "chevron.backward"
        case .cancel: return "xmark"
        case .clear: return "trash"
        case .close: return "xmark"
        case .configure: return "gearshape"
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
        case .send: return "paperplane"
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

    /// Returns the language bundle for the specified language.
    ///
    /// This method returns the language bundle for the specified language.
    /// If no language is specified, the main bundle is returned.
    ///
    /// - Parameter language: The language for which to return the bundle.
    /// - Returns: The language bundle for the specified language, or the main bundle if no language is specified.
    public static func languageBundle(language: String? = nil) -> Bundle {
        guard let language = language,
            let bundlePath = Bundle.module.resourcePath
        else {
            return .module
        }
        let languageBundlePath = "\(bundlePath)/\(language).lproj"
        let thisBundle = Bundle(path: languageBundlePath)
        return thisBundle ?? .module
    }

    /// Returns the localized string for the current case in the specified language.
    ///
    /// This method returns the localized string for the current case in the specified language.
    /// If no language is specified, the main bundle is used.
    ///
    /// - Parameter language: The language for which to return the localized string.
    /// - Returns: The localized string for the current case in the specified language.
    public func localizedString(in language: String? = nil) -> String {
        let bundle = Self.languageBundle(language: language)
        return NSLocalizedString(
            rawValue, bundle: bundle, comment: "The text shown on the button of \(rawValue)")
    }

    /// The localized description of the case.
    ///
    /// This property returns the localized description of the case.
    /// The description is used to represent the action or state of the case in a user interface.
    ///
    /// - Returns: The localized description of the case.
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
