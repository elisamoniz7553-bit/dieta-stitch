import SwiftUI
import UIKit

enum AppIconExporter {
    static func exportPNG(url: URL, size: CGFloat = 1024) throws {
        let view = AppIconView(size: size)
        let renderer = ImageRenderer(content: view)
        renderer.scale = 1

        guard let uiImage = renderer.uiImage,
              let data = uiImage.pngData() else {
            throw NSError(domain: "AppIconExporter", code: 1)
        }

        try data.write(to: url)
    }
}
