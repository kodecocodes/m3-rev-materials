/// Copyright (c) 2026 Kodeco Inc. See COPYRIGHT for details.
/// Caution: This is AI-generated code.

import SwiftUI
import Charts

// MARK: - Detail screen · tokens vs. outcomes

struct TokensOutcomesView: View {
  private let tokensOutcomesViewModel = TokensOutcomesViewModel()

  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 24) {
        VStack(alignment: .leading, spacing: 4) {
          Text(tokensOutcomesViewModel.periodLine)
            .font(.subheadline)
            .foregroundStyle(.secondary)
          Text("Top-left: high value · bottom-right: needs coaching")
            .font(.subheadline)
            .foregroundStyle(.secondary)
        }
        scatter
      }
      .padding(24)
    }
    .background(Color(.systemBackground))
    .navigationTitle("Tokens vs. Outcomes")
    .toolbarTitleDisplayMode(.inline)
  }

  private var scatter: some View {
    Chart {
      RuleMark(x: .value(tokensOutcomesViewModel.xAxisCaption, tokensOutcomesViewModel.medianTokensMillions))
        .foregroundStyle(.gray.opacity(0.45))
        .lineStyle(StrokeStyle(lineWidth: 1, dash: [4, 4]))
        .accessibilityHidden(true)
      RuleMark(y: .value(tokensOutcomesViewModel.yAxisCaption, tokensOutcomesViewModel.medianPRs))
        .foregroundStyle(.gray.opacity(0.45))
        .lineStyle(StrokeStyle(lineWidth: 1, dash: [4, 4]))
        .accessibilityHidden(true)
      ForEach(tokensOutcomesViewModel.points) { point in
        PointMark(
          x: .value(tokensOutcomesViewModel.xAxisCaption, point.tokensMillions),
          y: .value(tokensOutcomesViewModel.yAxisCaption, point.mergedPRs)
        )
        .symbolSize(180)
        .symbol(point.needsCoaching ? .diamond : .circle)
        .foregroundStyle(point.needsCoaching ? Color.orange : Color.indigo)
        .annotation(position: .top, spacing: 2) {
          Text(point.name)
            .font(.caption)
            .foregroundStyle(.secondary)
        }
        .accessibilityLabel(point.name)
        .accessibilityValue("\(point.detailDisplay) · \(point.quadrantLabel)")
      }
    }
    .chartXScale(domain: tokensOutcomesViewModel.tokensDomain)
    .chartYScale(domain: tokensOutcomesViewModel.prsDomain)
    .chartXAxisLabel(tokensOutcomesViewModel.xAxisCaption, alignment: .leading)
    .chartYAxisLabel(tokensOutcomesViewModel.yAxisCaption, position: .topTrailing)
    .chartYAxis {
      AxisMarks(position: .trailing)
    }
    .frame(height: 320)
    .accessibilityLabel(chartAccessibilitySummary)
  }

  private var chartAccessibilitySummary: String {
    let pointSummaries = tokensOutcomesViewModel.points
      .map { "\($0.name): \($0.detailDisplay), \($0.quadrantLabel)" }
      .joined(separator: ". ")
    return "Scatter chart of tokens consumed versus merged pull requests per developer. \(pointSummaries)"
  }
}

#Preview("Details · Tokens vs. Outcomes") {
  NavigationStack {
    TokensOutcomesView()
  }
}
