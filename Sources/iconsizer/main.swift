import SwiftImage
import Foundation

let sizes: [(Double, [Int])] = [
    (20, [2, 3]),
    (29, [2, 3]),
    (40, [2, 3]),
    (60, [2, 3]),
    (20, [1, 2]),
    (29, [1, 2]),
    (40, [1, 2]),
    (76, [1, 2]),
    (83.5, [2]),
    (1024, [1]),
]

func main() {
    let arguments = CommandLine.arguments
    guard arguments.count > 1 else {
        print("iconsizer <icon-image-path>")
        return
    }
    
    for path in arguments[1...] {
        defer { print() }
        guard let image: Image<RGBA<UInt8>> = Image(contentsOfFile: path) else {
            print("Failed to load an image from \(path).")
            continue
        }
        
        let directoryPath = (path as NSString).deletingLastPathComponent
        let baseFilename = ((path as NSString).lastPathComponent as NSString).deletingPathExtension
        
        for (size, scales) in sizes {
            for scale in scales {
                let actualSize = Int(size * Double(scale))
                let sizeString = Double(Int(size)) == size ? "\(Int(size))" : "\(size)"
                let scalePostfix = scale == 1 ? "" : "@\(scale)x"
                let filename = "\(baseFilename)-\(sizeString)\(scalePostfix).png"
                print("Writing \(filename) (actualSize = \(actualSize))")
                let resized = image.resizedTo(width: actualSize, height: actualSize)
                let outPath = (directoryPath as NSString).appendingPathComponent(filename)
                do {
                    try resized.write(toFile: outPath, atomically: true, format: .png)
                } catch _ {
                    print("Failed to write an image to \(outPath).")
                    return
                }
            }
        }
    }
}

main()
