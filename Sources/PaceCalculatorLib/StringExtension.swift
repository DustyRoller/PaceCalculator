import Foundation

public extension String {
    func convertToTimeInterval() -> TimeInterval! {
        guard !self.isEmpty else {
            return nil
        }

        var interval: Double = 0
        let parts = self.components(separatedBy: ":")
        for (index, part) in parts.reversed().enumerated() {
            interval += (Double(part) ?? 0) * pow(Double(60), Double(index))
        }

        return interval
    }
}
