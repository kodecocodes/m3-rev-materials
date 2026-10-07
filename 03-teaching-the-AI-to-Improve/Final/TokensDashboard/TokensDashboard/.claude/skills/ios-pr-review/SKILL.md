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
