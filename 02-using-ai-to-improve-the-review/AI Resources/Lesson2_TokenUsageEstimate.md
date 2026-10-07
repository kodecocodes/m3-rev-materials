# Token Usage

This document outlines the approximate token usage for lesson 2 in the sixth module.

## Tools for Measuring Token Count

### Claude Agent in Xcode

In Xcode 27 beta 4, Xcode and Claude don't show the token count. Therefore, [**ccusage**](https://ccusage.com) calculated the tokens.


## Important Caveats Before Proceeding

Here are a few key points:

- The numbers reported here are approximate.
- Token counts can vary significantly depending on the model used.
- AI output can vary on every run.
- Throughout this course, use `/usage` in an Xcode conversation with Claude Agent to learn more about your usage quota and costs.

## Token Usage for Claude Agent in Xcode

Since a single Xcode conversation covered the following prompts:

- Prompt 1: Unguided Baseline
- Prompt 2: Checklist-Guided Review
- Prompt 3: Bug or Style Preference
- Prompt 4: Plan the Fixes
- Prompt 5: Apply the Accepted Fixes

The approximate total token count at the end of the session for all five interactions was:


| Model | Input | Cache Create | Cache Read | Output | Total Tokens |
| ---: | ---: | ---: | ---: | ---: | ---: |
|opus-4-8 |  9,106 | 76,782 | 799,306 | 32,782 | **~917,976** |
