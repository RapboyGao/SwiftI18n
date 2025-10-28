import SwiftUI

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
struct SwiftI18nTestView: View {
    var body: some View {
        List(SwiftI18n.allCases) { item in
            Button(item.description, systemImage: item.defaultSystemImage) {
                //
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
