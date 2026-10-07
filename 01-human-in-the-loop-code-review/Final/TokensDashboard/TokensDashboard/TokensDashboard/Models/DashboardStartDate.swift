/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

import Foundation

/// Fixed reporting date for the prototype so every screen and preview
/// shows the same numbers, shared by all data stores.
enum DashboardStartDate {
  static let today: Date = {
    let calendar = Calendar(identifier: .gregorian)
    let components = DateComponents(year: 2026, month: 5, day: 1)
    return calendar.date(from: components)
      ?? Date(timeIntervalSince1970: 1_777_593_600) // fallback: May 1, 2026
  }()
}
