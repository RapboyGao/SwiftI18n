import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public func I18nText(_ key: SwiftI18n) -> Text {
    Text(key.description)
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
#Preview {
    I18nText(.edit)
}
