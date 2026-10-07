# Tokens Dashboard

A SwiftUI MVVM app that visualizes a team's AI token spend across three screens: cost by model, tokens vs. developer outcomes, and ticket-to-merge time by AI usage cohort. All data is fixed, in-memory mock data anchored to a single shared reporting date, so the app renders identically on every run.

## Structure

- `Models/` — data stores and their record types (e.g. `ModelCostStore`,  `TicketToMerge`, `TokensOutcomes`), plus `DashboardStartDate`, the shared reporting date used across the app.
- `ViewModels/` — one view model per screen, each initialized from its corresponding model store and exposing display-ready values to its view.
- `Views/` — one SwiftUI view per screen, plus `ContentView` for navigation.
- `App/` — app-level configuration (e.g. `AppColors`).

## Coding Rules

- Never use force-unwrap (!) on any Optional. Always use guard let with a meaningful fallback or ?? instead.
- Every Identifiable type must use a stable, declared id. Never use a computed string as an id.
- File and type names for the same feature must use identical casing throughout the project.
- Any text built from data must derive dates and labels from the data source. Never hardcode a month or value as a string literal.
- View models must be stored as @State private var in SwiftUI views, not as plain let properties.
