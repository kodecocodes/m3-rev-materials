```metadata
ref: "05"
title: "Prompts Used in This Lesson"
description_md: |
  Every prompt used while recording this lesson, in the order they appear on screen.
```

# Lesson 2 Prompts — Using AI to Improve the Review

## Prompt 1 — Unguided Baseline
Used first, before any structured guidance, to capture AI's unprompted baseline read of the app.

```prompt
Review this codebase the way a senior iOS engineer would in a pull request. Point out anything you'd flag before approving. Don't just describe what the code does.
```

## Prompt 2 — Checklist-Guided Review
Used second, right after the unguided baseline, to run the same app through a structured pass across all seven categories.

```
Review this project as a senior ios engineer would in a pull request, checking specifically against each of these categorie: correctness, architecture, performance,  security, accessibility, testing, and maintainability. Go through the categories one at a time and tell me what you find in each, including saying "nothing notable" for categories where there isn't an issue.
```

## Prompt 3 — Bug or Style Preference
Used after the checklist-guided review, to classify every finding before deciding what to act on.

```
For each finding in your last review, tell me whether it's a real bug or crash risk, or a style preference. Go through each category in order. Be direct.
```

## Prompt 4 — Plan the Fixes
Used after classifying findings, to have AI plan fixes for only the accepted items before touching any code.

```
Fix everything you just classified as a real bug or crash risk. Leave everything classified as a style preference untouched. Also leave the testing gap as-is. That's out of scope here. Show me every file you plan to change before applying anything.
```

## Prompt 5 — Apply the Accepted Fixes
Used after reviewing AI's fix plan, to approve it and let AI apply the changes.

```
Yes, proceed with all 10.
```

## Fixes Applied
Applied after Prompt 5 approved all ten accepted fixes.

```
CostbyModelView.swift — ForEach(enumerated) replaced with ForEach(slices); SliceRow now takes slice.swatch directly instead of computing the color from the index.

CostByModelViewModel.swift — Added swatch: Color to Slice, assigned in init from ColorStyles.shades so color mapping lives in the ViewModel alongside the data.

DashboardStartDate.swift — date! replaced with date ?? Date() so a calendar resolution failure returns a safe fallback instead of crashing at launch.

KPIFormat.swift — Added days(_:) static method; fixed tokensMillionsShort to call trimmed() instead of duplicating the format expression inline.

SummaryView.swift — Removed DestinationGraph enum (moved to SummaryViewModel); fixed "Token's Dashboard Summary" to "Tokens Dashboard Summary".

SummaryViewModel.swift — Moved DestinationGraph here from the View layer; replaced both TicketToMergeViewModel.days() call sites with KPIFormat.days().

TicketToMerge.swift — Index-based parallel array loop replaced with zip(heavyDays, lightDays).enumerated(); date! replaced with a guarded guard let with safe fallback.

TicketToMergeViewModel.swift — Removed days() static method; all call sites now use KPIFormat.days() instead.

TokensOutcomesView.swift — RuleMarks marked .accessibilityHidden(true); coaching dots now use .symbol(.diamond) and others use .symbol(.circle) so shape distinguishes them alongside color.

TokensOutcomesViewModel.swift — aboveMedianPRs changed from >= to > to match aboveMedianTokens, making the quadrant boundary consistent on both axes.
```