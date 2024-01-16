import Foundation

public struct PaceCalculator {
    let distance: Double
    let interval: Double

    init(distance: Double, interval: Double) {
        self.distance = distance
        self.interval = interval
    }

    func calculatePace() -> Double {
        return (interval / distance) / 60
    }
}
