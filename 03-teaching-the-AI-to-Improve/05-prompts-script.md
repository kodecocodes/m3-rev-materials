```metadata
ref: "05"
title: "Prompts and Files Used in This Lesson"
description_md: |
  Every prompt, CLAUDE.md addition, and skill file used while recording this lesson, in the order they appear on screen.
```

# Lesson 3 Prompts and Files — Teaching the AI to Improve

## Prompt 1 — Verify CLAUDE.md rule works
Use this prompt AFTER adding the coding rules to CLAUDE.md. Do not mention force-unwraps or any rule in the prompt.

```
Write a new mock data store called TeamBudgetStore that includes a date property built from DateComponents for January 1, 2026.
```

Expected result: Claude uses guard let or ?? instead of force-unwrap, without being told to.

---

## Prompt 2 — Trigger the review skill
Use this prompt AFTER creating the skill file. This is the entire prompt — nothing else.

```
Review this project.
```

Expected result: Claude runs a structured seven-category review with severity labels and a merge recommendation, matching the process from Lesson 2.

---

## CLAUDE.md
Add this section to the existing CLAUDE.md at the project root. The file already has basic project context from Lesson 1. Add this below it:

```
## Coding Rules

- Never use force-unwrap (!) on any Optional. Always use guard let with a meaningful fallback or ?? instead.
- Every Identifiable type must use a stable, declared id. Never use a computed string as an id.
- File and type names for the same feature must use identical casing throughout the project.
- Any text built from data must derive dates and labels from the data source. Never hardcode a month or value as a string literal.
- View models must be stored as @State private var in SwiftUI views, not as plain let properties.
```

---

## Skill file
Full path: .claude/skills/ios-pr-review/SKILL.md

Create the folder structure using this terminal command:
```
mkdir -p .claude/skills/ios-pr-review && touch .claude/skills/ios-pr-review/SKILL.md
```

Then add this content to the file:

```
---
name: ios-pr-review
description: Use when asked to review code, do a PR-style pass, or check code quality in this project.
---

Review the code as a senior iOS engineer would in a pull request. Go through each of these categories in order, saying "nothing notable" for any category with no issue: correctness, architecture, performance, security, accessibility, testing, maintainability.

Label each finding using one of these:
- Real bug or crash risk: fix before merge.
- Real bug, not urgent: fix soon.
- Style preference: note it, don't act on it unless asked.

End with a clear answer: would you merge this as-is, and what are the top one or two things to fix first if not.
```