import SwiftUI

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
struct SwiftI18nTestView: View {
    @State private var selectedLanguage: String = "zh-Hans"

    var body: some View {
        List {
            Picker("Language", selection: $selectedLanguage) {
                ForEach(SwiftI18n.allSupportedLanguages, id: \.self) { language in
                    Text(language)
                }
            }
            ForEach(SwiftI18n.allCases) { item in
                HStack {
                    Label(item.localizedString(in: selectedLanguage), systemImage: item.defaultSystemImage)
                    Spacer()
                    Text(item.rawValue)
                }
            }
        }
    }
}

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
struct SwiftI18nTestView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftI18nTestView()
    }
}
