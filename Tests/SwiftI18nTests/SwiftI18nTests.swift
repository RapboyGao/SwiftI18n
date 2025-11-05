import Foundation
import Testing

@testable import SwiftI18n

@Test func testTranslationIntegrity() async throws {
    guard let bundlePath = Bundle.module.resourcePath else {
        return
    }

    // 查找所有可用的语言包
    let fileManager = FileManager.default
    let contents = try fileManager.contentsOfDirectory(atPath: bundlePath)
    let languageBundles = contents.filter { $0.hasSuffix(".lproj") }

    print("找到以下语言包: \(languageBundles)")

    // 遍历每个语言包，检查是否有缺失的翻译
    for languageBundle in languageBundles {
        let language = languageBundle.dropLast(6)  // 移除 ".lproj" 后缀
        let allTranslations = SwiftI18n.allCases.map {
            $0.localizedString(in: String(language))
        }
        let noneTranslated = allTranslations.filter { $0.contains("@") }
        let numberOfNoneTranslated = noneTranslated.count
        #expect(
            noneTranslated.isEmpty,
            "语言包 \(language) 缺失 \(numberOfNoneTranslated) 个翻译")
    }
}
