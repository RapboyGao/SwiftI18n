# SwiftI18n

## [English](#english)
## [简体中文](#简体中文)
## [日本語](#日本語)
## [Español](#español)
## [Français](#français)
## [Deutsch](#deutsch)

---

## English

### A Comprehensive Internationalization Library for Swift

SwiftI18n is a powerful internationalization library for Swift applications that provides standardized localized strings for common UI elements across 53 different languages.

### Key Features

- **53 Supported Languages**: Comprehensive language coverage for global applications
- **60+ Standard UI Strings**: Common action buttons, labels, and interface elements
- **Built-in System Images**: Default SF Symbols for each UI element
- **SwiftUI Integration**: Ready-to-use `Text` and `Button` extensions
- **Easy Language Switching**: Runtime language selection capabilities
- **Type-Safe Implementation**: Enum-based approach for compile-time safety

### Supported Languages

SwiftI18n supports the following languages:

- English (en)
- Simplified Chinese (zh-Hans)
- Traditional Chinese (zh-Hant)
- Japanese (ja)
- Korean (ko)
- Spanish (es)
- French (fr)
- German (de)
- Italian (it)
- Portuguese (pt-pt)
- Brazilian Portuguese (pt-br)
- Russian (ru)
- Arabic (ar)
- Hindi (hi)
- Bengali (bn)
- Punjabi (pa)
- Marathi (mr)
- Telugu (te)
- Tamil (ta)
- Malayalam (ml)
- Vietnamese (vi)
- Indonesian (id)
- Thai (th)
- Turkish (tr)
- Polish (pl)
- Dutch (nl)
- Swedish (sv)
- Norwegian (no)
- Danish (da)
- Finnish (fi)
- Icelandic (is)
- Hungarian (hu)
- Romanian (ro)
- Czech (cs)
- Slovak (sk)
- Slovenian (sl)
- Croatian (hr)
- Bulgarian (bg)
- Ukrainian (uk)
- Greek (el)
- Hebrew (he)
- Persian (fa)
- Vietnamese (vi)
- Estonian (et)
- Latvian (lv)
- Lithuanian (lt)
- Irish (ga)
- Welsh (cy)
- Albanian (sq)
- Swahili (sw)
- Filipino (fil)
- Afrikaans (af)
- Catalan (ca)

### Installation

#### Swift Package Manager

Add the package dependency to your Xcode project:

```swift
.package(url: "https://github.com/RapboyGao/SwiftI18n.git", from: "1.0.0")
```

### Usage

#### Basic Usage

```swift
import SwiftI18n

// Get localized string
let addButtonText = SwiftI18n.add.description

// Get localized string in specific language
let cancelButtonText = SwiftI18n.cancel.localizedString(in: "ja")
```

#### SwiftUI Integration

```swift
import SwiftUI
import SwiftI18n

struct ContentView: View {
    var body: some View {
        VStack {
            // Text view with localized content
            SwiftI18n.confirm.text
            
            // Button with default image
            SwiftI18n.save.buttonWithDefaultImage {
                // Save action
            }
            
            // Custom button with specific image
            SwiftI18n.delete.button(systemImage: "trash.fill") {
                // Delete action
            }
        }
    }
}
```

#### Language Switching

```swift
// Get all supported languages
let allLanguages = SwiftI18n.allSupportedLanguages

// Display a specific string in different languages
for language in allLanguages {
    print("\(language): \(SwiftI18n.hello.localizedString(in: language))")
}
```

### License

MIT

---

## 简体中文

### Swift应用国际化全面解决方案

SwiftI18n是一个功能强大的Swift应用国际化库，为53种不同语言的常见UI元素提供标准化的本地化字符串。

### 主要功能

- **支持53种语言**：全面的语言覆盖，满足全球应用需求
- **60+标准UI字符串**：常见操作按钮、标签和界面元素
- **内置系统图标**：为每个UI元素提供默认SF Symbols图标
- **SwiftUI集成**：即用型的`Text`和`Button`扩展
- **轻松切换语言**：运行时语言选择功能
- **类型安全实现**：基于枚举的方法确保编译时安全

### 支持的语言

SwiftI18n支持以下语言：

- 英语 (en)
- 简体中文 (zh-Hans)
- 繁体中文 (zh-Hant)
- 日语 (ja)
- 韩语 (ko)
- 西班牙语 (es)
- 法语 (fr)
- 德语 (de)
- 意大利语 (it)
- 葡萄牙语 (pt-pt)
- 巴西葡萄牙语 (pt-br)
- 俄语 (ru)
- 阿拉伯语 (ar)
- 印地语 (hi)
- 孟加拉语 (bn)
- 旁遮普语 (pa)
- 马拉地语 (mr)
- 泰卢固语 (te)
- 泰米尔语 (ta)
- 马拉雅拉姆语 (ml)
- 越南语 (vi)
- 印尼语 (id)
- 泰语 (th)
- 土耳其语 (tr)
- 波兰语 (pl)
- 荷兰语 (nl)
- 瑞典语 (sv)
- 挪威语 (no)
- 丹麦语 (da)
- 芬兰语 (fi)
- 冰岛语 (is)
- 匈牙利语 (hu)
- 罗马尼亚语 (ro)
- 捷克语 (cs)
- 斯洛伐克语 (sk)
- 斯洛文尼亚语 (sl)
- 克罗地亚语 (hr)
- 保加利亚语 (bg)
- 乌克兰语 (uk)
- 希腊语 (el)
- 希伯来语 (he)
- 波斯语 (fa)
- 越南语 (vi)
- 爱沙尼亚语 (et)
- 拉脱维亚语 (lv)
- 立陶宛语 (lt)
- 爱尔兰语 (ga)
- 威尔士语 (cy)
- 阿尔巴尼亚语 (sq)
- 斯瓦希里语 (sw)
- 菲律宾语 (fil)
- 南非荷兰语 (af)
- 加泰罗尼亚语 (ca)

### 安装

#### Swift Package Manager

将包依赖添加到您的Xcode项目：

```swift
.package(url: "https://github.com/RapboyGao/SwiftI18n.git", from: "1.0.0")
```

### 使用方法

#### 基本用法

```swift
import SwiftI18n

// 获取本地化字符串
let addButtonText = SwiftI18n.add.description

// 获取特定语言的本地化字符串
let cancelButtonText = SwiftI18n.cancel.localizedString(in: "ja")
```

#### SwiftUI集成

```swift
import SwiftUI
import SwiftI18n

struct ContentView: View {
    var body: some View {
        VStack {
            // 带有本地化内容的文本视图
            SwiftI18n.confirm.text
            
            // 带有默认图标的按钮
            SwiftI18n.save.buttonWithDefaultImage {
                // 保存操作
            }
            
            // 带有特定图标的自定义按钮
            SwiftI18n.delete.button(systemImage: "trash.fill") {
                // 删除操作
            }
        }
    }
}
```

#### 语言切换

```swift
// 获取所有支持的语言
let allLanguages = SwiftI18n.allSupportedLanguages

// 以不同语言显示特定字符串
for language in allLanguages {
    print("\(language): \(SwiftI18n.hello.localizedString(in: language))")
}
```

### 许可证

MIT

---

## 日本語

### Swiftアプリケーションのための包括的な国際化ライブラリ

SwiftI18nは、53の異なる言語で一般的なUI要素に標準化されたローカライズ文字列の提供を行う、強力なSwiftアプリケーション用国際化ライブラリです。

### 主な機能

- **53言語をサポート**：世界中のアプリケーションに対応する包括的な言語カバレッジ
- **60以上の標準UI文字列**：一般的なアクションボタン、ラベル、インターフェース要素
- **組み込みシステム画像**：各UI要素のデフォルトSFシンボル
- **SwiftUI統合**：即座に使用可能な`Text`と`Button`拡張
- **簡単な言語切り替え**：実行時の言語選択機能
- **型安全な実装**：コンパイル時の安全性を確保するための列挙型ベースのアプローチ

### サポート言語

SwiftI18nは以下の言語をサポートしています：

- 英語 (en)
- 簡体字中国語 (zh-Hans)
- 繁体字中国語 (zh-Hant)
- 日本語 (ja)
- 韓国語 (ko)
- スペイン語 (es)
- フランス語 (fr)
- ドイツ語 (de)
- イタリア語 (it)
- ポルトガル語 (pt-pt)
- ブラジルポルトガル語 (pt-br)
- ロシア語 (ru)
- アラビア語 (ar)
- ヒンディー語 (hi)
- ベンガル語 (bn)
- パンジャビー語 (pa)
- マラーティー語 (mr)
- テルグー語 (te)
- タミール語 (ta)
- マラヤーラム語 (ml)
- ベトナム語 (vi)
- インドネシア語 (id)
- タイ語 (th)
- トルコ語 (tr)
- ポーランド語 (pl)
- オランダ語 (nl)
- スウェーデン語 (sv)
- ノルウェー語 (no)
- デンマーク語 (da)
- フィンランド語 (fi)
- アイスランド語 (is)
- ハンガリー語 (hu)
- ルーマニア語 (ro)
- チェコ語 (cs)
- スロバキア語 (sk)
- スロベニア語 (sl)
- クロアチア語 (hr)
- ブルガリア語 (bg)
- ウクライナ語 (uk)
- ギリシャ語 (el)
- ヘブライ語 (he)
- ペルシア語 (fa)
- ベトナム語 (vi)
- エストニア語 (et)
- ラトビア語 (lv)
- リトアニア語 (lt)
- アイルランド語 (ga)
- ウェールズ語 (cy)
- アルバニア語 (sq)
- スワヒリ語 (sw)
- フィリピン語 (fil)
- アフリカーンス語 (af)
- カタロニア語 (ca)

### インストール

#### Swift Package Manager

Xcodeプロジェクトにパッケージ依存関係を追加します：

```swift
.package(url: "https://github.com/RapboyGao/SwiftI18n.git", from: "1.0.0")
```

### 使用方法

#### 基本的な使い方

```swift
import SwiftI18n

// ローカライズされた文字列を取得
let addButtonText = SwiftI18n.add.description

// 特定の言語のローカライズされた文字列を取得
let cancelButtonText = SwiftI18n.cancel.localizedString(in: "ja")
```

#### SwiftUIとの統合

```swift
import SwiftUI
import SwiftI18n

struct ContentView: View {
    var body: some View {
        VStack {
            // ローカライズされたコンテンツを持つテキストビュー
            SwiftI18n.confirm.text
            
            // デフォルトの画像を持つボタン
            SwiftI18n.save.buttonWithDefaultImage {
                // 保存アクション
            }
            
            // 特定の画像を持つカスタムボタン
            SwiftI18n.delete.button(systemImage: "trash.fill") {
                // 削除アクション
            }
        }
    }
}
```

#### 言語の切り替え

```swift
// サポートされているすべての言語を取得
let allLanguages = SwiftI18n.allSupportedLanguages

// 異なる言語で特定の文字列を表示
for language in allLanguages {
    print("\(language): \(SwiftI18n.hello.localizedString(in: language))")
}
```

### ライセンス

MIT

---

## Español

### Una Biblioteca Completa de Internacionalización para Swift

SwiftI18n es una potente biblioteca de internacionalización para aplicaciones Swift que proporciona cadenas localizadas estandarizadas para elementos UI comunes en 53 diferentes idiomas.

### Características Principales

- **53 Idiomas Soportados**: Cobertura lingüística integral para aplicaciones globales
- **60+ Cadenas UI Estándar**: Botones de acción comunes, etiquetas y elementos de interfaz
- **Imágenes de Sistema Integradas**: SF Symbols predeterminadas para cada elemento UI
- **Integración con SwiftUI**: Extensiones `Text` y `Button` listas para usar
- **Cambio de Idioma Fácil**: Funcionalidades de selección de idioma en tiempo de ejecución
- **Implementación con Seguridad de Tipo**: Enfoque basado en enumeraciones para seguridad en tiempo de compilación

### Idiomas Soportados

SwiftI18n admite los siguientes idiomas:

- Inglés (en)
- Chino Simplificado (zh-Hans)
- Chino Tradicional (zh-Hant)
- Japonés (ja)
- Coreano (ko)
- Español (es)
- Francés (fr)
- Alemán (de)
- Italiano (it)
- Portugués (pt-pt)
- Portugués Brasileño (pt-br)
- Ruso (ru)
- Árabe (ar)
- Hindi (hi)
- Bengalí (bn)
- Punjabi (pa)
- Maratí (mr)
- Telugú (te)
- Tamil (ta)
- Malabar (ml)
- Vietnamita (vi)
- Indonesio (id)
- Tailandés (th)
- Turco (tr)
- Polaco (pl)
- Neerlandés (nl)
- Sueco (sv)
- Noruego (no)
- Danés (da)
- Finlandés (fi)
- Islandés (is)
- Húngaro (hu)
- Rumano (ro)
- Checo (cs)
- Eslovaco (sk)
- Esloveno (sl)
- Croata (hr)
- Búlgaro (bg)
- Ucraniano (uk)
- Griego (el)
- Hebreo (he)
- Persa (fa)
- Vietnamita (vi)
- Estonio (et)
- Letón (lv)
- Lituano (lt)
- Irlandés (ga)
- Galés (cy)
- Albanés (sq)
- Swahili (sw)
- Filipino (fil)
- Afrikaans (af)
- Catalán (ca)

### Instalación

#### Swift Package Manager

Agregue la dependencia del paquete a su proyecto de Xcode:

```swift
.package(url: "https://github.com/RapboyGao/SwiftI18n.git", from: "1.0.0")
```

### Uso

#### Uso Básico

```swift
import SwiftI18n

// Obtener cadena localizada
let addButtonText = SwiftI18n.add.description

// Obtener cadena localizada en un idioma específico
let cancelButtonText = SwiftI18n.cancel.localizedString(in: "ja")
```

#### Integración con SwiftUI

```swift
import SwiftUI
import SwiftI18n

struct ContentView: View {
    var body: some View {
        VStack {
            // Vista de texto con contenido localizado
            SwiftI18n.confirm.text
            
            // Botón con imagen predeterminada
            SwiftI18n.save.buttonWithDefaultImage {
                // Acción de guardado
            }
            
            // Botón personalizado con imagen específica
            SwiftI18n.delete.button(systemImage: "trash.fill") {
                // Acción de eliminación
            }
        }
    }
}
```

#### Cambio de Idioma

```swift
// Obtener todos los idiomas soportados
let allLanguages = SwiftI18n.allSupportedLanguages

// Mostrar una cadena específica en diferentes idiomas
for language in allLanguages {
    print("\(language): \(SwiftI18n.hello.localizedString(in: language))")
}
```

### Licencia

MIT

---

## Français

### Une Bibliothèque Complète d'Internationalisation pour Swift

SwiftI18n est une puissante bibliothèque d'internationalisation pour applications Swift qui fournit des chaînes localisées standardisées pour les éléments d'interface utilisateur courants dans 53 langues différentes.

### Fonctionnalités Principales

- **53 Langues Prises en Charge**: Couverture linguistique complète pour les applications mondiales
- **60+ Chaînes UI Standard**: Boutons d'action courants, étiquettes et éléments d'interface
- **Images Système Intégrées**: SF Symbols par défaut pour chaque élément UI
- **Intégration avec SwiftUI**: Extensions `Text` et `Button` prêtes à l'emploi
- **Changement de Langue Facile**: Fonctionnalités de sélection de langue au moment de l'exécution
- **Implémentation à Sécurité de Type**: Approche basée sur des énumérations pour une sécurité à la compilation

### Langues Prises en Charge

SwiftI18n prend en charge les langues suivantes :

- Anglais (en)
- Chinois Simplifié (zh-Hans)
- Chinois Traditionnel (zh-Hant)
- Japonais (ja)
- Coréen (ko)
- Espagnol (es)
- Français (fr)
- Allemand (de)
- Italien (it)
- Portugais (pt-pt)
- Portugais Brésilien (pt-br)
- Russe (ru)
- Arabe (ar)
- Hindi (hi)
- Bengali (bn)
- Pendjabi (pa)
- Marathi (mr)
- Télougou (te)
- Tamoul (ta)
- Malayalam (ml)
- Vietnamien (vi)
- Indonésien (id)
- Thaï (th)
- Turc (tr)
- Polonais (pl)
- Néerlandais (nl)
- Suédois (sv)
- Norvégien (no)
- Danois (da)
- Finnois (fi)
- Islandais (is)
- Hongrois (hu)
- Roumain (ro)
- Tchèque (cs)
- Slovaque (sk)
- Slovène (sl)
- Croate (hr)
- Bulgare (bg)
- Ukrainien (uk)
- Grec (el)
- Hébreu (he)
- Persan (fa)
- Vietnamien (vi)
- Estonien (et)
- Letton (lv)
- Lituanien (lt)
- Irlandais (ga)
- Gallois (cy)
- Albanais (sq)
- Swahili (sw)
- Philippin (fil)
- Afrikaans (af)
- Catalan (ca)

### Installation

#### Swift Package Manager

Ajoutez la dépendance du package à votre projet Xcode :

```swift
.package(url: "https://github.com/RapboyGao/SwiftI18n.git", from: "1.0.0")
```

### Utilisation

#### Utilisation de Base

```swift
import SwiftI18n

// Obtenir une chaîne localisée
let addButtonText = SwiftI18n.add.description

// Obtenir une chaîne localisée dans une langue spécifique
let cancelButtonText = SwiftI18n.cancel.localizedString(in: "ja")
```

#### Intégration avec SwiftUI

```swift
import SwiftUI
import SwiftI18n

struct ContentView: View {
    var body: some View {
        VStack {
            // Vue texte avec contenu localisé
            SwiftI18n.confirm.text
            
            // Bouton avec image par défaut
            SwiftI18n.save.buttonWithDefaultImage {
                // Action de sauvegarde
            }
            
            // Bouton personnalisé avec image spécifique
            SwiftI18n.delete.button(systemImage: "trash.fill") {
                // Action de suppression
            }
        }
    }
}
```

#### Changement de Langue

```swift
// Obtenir toutes les langues prises en charge
let allLanguages = SwiftI18n.allSupportedLanguages

// Afficher une chaîne spécifique dans différentes langues
for language in allLanguages {
    print("\(language): \(SwiftI18n.hello.localizedString(in: language))")
}
```

### Licence

MIT

---

## Deutsch

### Eine Komplette Internationalisierungsbibliothek für Swift

SwiftI18n ist eine leistungsstarke Internationalisierungsbibliothek für Swift-Anwendungen, die standardisierte lokalisierte Zeichenketten für gängige UI-Elemente in 53 verschiedenen Sprachen bereitstellt.

### Hauptmerkmale

- **53 Unterstützte Sprachen**: Umfangreiche Sprachabdeckung für globale Anwendungen
- **60+ Standard-UI-Zeichenketten**: Gängige Aktionsbuttons, Beschriftungen und Schnittstellenelemente
- **Integrierte Systembilder**: Standard-SF-Symbole für jedes UI-Element
- **SwiftUI-Integration**: Ready-to-use `Text`- und `Button`-Erweiterungen
- **Einfache Sprachumschaltung**: Sprachauswahlfunktionen zur Laufzeit
- **Typsichere Implementierung**: Enum-basierter Ansatz für Kompilierzeitsicherheit

### Unterstützte Sprachen

SwiftI18n unterstützt die folgenden Sprachen:

- Englisch (en)
- Vereinfachtes Chinesisch (zh-Hans)
- Traditionelles Chinesisch (zh-Hant)
- Japanisch (ja)
- Koreanisch (ko)
- Spanisch (es)
- Französisch (fr)
- Deutsch (de)
- Italienisch (it)
- Portugiesisch (pt-pt)
- Brasilianisches Portugiesisch (pt-br)
- Russisch (ru)
- Arabisch (ar)
- Hindi (hi)
- Bengali (bn)
- Punjabi (pa)
- Marathi (mr)
- Telugu (te)
- Tamil (ta)
- Malayalam (ml)
- Vietnamesisch (vi)
- Indonesisch (id)
- Thai (th)
- Türkisch (tr)
- Polnisch (pl)
- Niederländisch (nl)
- Schwedisch (sv)
- Norwegisch (no)
- Dänisch (da)
- Finnisch (fi)
- Isländisch (is)
- Ungarisch (hu)
- Rumanisch (ro)
- Tschechisch (cs)
- Slowakisch (sk)
- Slowenisch (sl)
- Kroatisch (hr)
- Bulgarisch (bg)
- Ukrainisch (uk)
- Griechisch (el)
- Hebräisch (he)
- Persisch (fa)
- Vietnamesisch (vi)
- Estnisch (et)
- Lettisch (lv)
- Litauisch (lt)
- Irisch (ga)
- Walisisch (cy)
- Albanisch (sq)
- Swahili (sw)
- Filipino (fil)
- Afrikaans (af)
- Katalanisch (ca)

### Installation

#### Swift Package Manager

Fügen Sie die Paketabhängigkeit zu Ihrem Xcode-Projekt hinzu:

```swift
.package(url: "https://github.com/RapboyGao/SwiftI18n.git", from: "1.0.0")
```

### Verwendung

#### Grundlegende Verwendung

```swift
import SwiftI18n

// Lokalisierte Zeichenkette abrufen
let addButtonText = SwiftI18n.add.description

// Lokalisierte Zeichenkette in einer bestimmten Sprache abrufen
let cancelButtonText = SwiftI18n.cancel.localizedString(in: "ja")
```

#### SwiftUI-Integration

```swift
import SwiftUI
import SwiftI18n

struct ContentView: View {
    var body: some View {
        VStack {
            // Textansicht mit lokalisiertem Inhalt
            SwiftI18n.confirm.text
            
            // Schaltfläche mit Standardbild
            SwiftI18n.save.buttonWithDefaultImage {
                // Speicheraktion
            }
            
            // benutzerdefinierte Schaltfläche mit spezifischem Bild
            SwiftI18n.delete.button(systemImage: "trash.fill") {
                // Löschaktion
            }
        }
    }
}
```

#### Sprachumschaltung

```swift
// Alle unterstützten Sprachen abrufen
let allLanguages = SwiftI18n.allSupportedLanguages

// Bestimmte Zeichenkette in verschiedenen Sprachen anzeigen
for language in allLanguages {
    print("\(language): \(SwiftI18n.hello.localizedString(in: language))")
}
```

### Lizenz

MIT