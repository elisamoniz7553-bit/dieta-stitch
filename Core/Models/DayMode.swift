import Foundation

enum DayMode: String {
    case work
    case off

    var title: String {
        self == .work ? "Dia de trabalho" : "Dia de folga"
    }
}
