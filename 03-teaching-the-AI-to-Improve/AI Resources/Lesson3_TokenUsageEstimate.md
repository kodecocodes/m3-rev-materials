# Token Usage

This document outlines the approximate token usage for this lesson on teaching the AI to improve the review.

## Tools for Measuring Token Count

### Claude Agent in Xcode

In Xcode 27 beta 4, Xcode and Claude don't show the token count. Therefore, [**ccusage**](https://ccusage.com) calculated the tokens.


## Important Caveats Before Proceeding

Here are a few key points:

- The numbers reported here are approximate.
- Token counts can vary significantly depending on the model used.
- AI output can vary on every run.
- Estimated costs use pay-as-you-go API prices in USD as of October 2026. If you use a Claude subscription plan, your usage counts against the plan's allowance instead.
- Throughout this course, use `/usage` in an Xcode conversation with Claude Agent to learn more about your usage quota and costs.

## Token Usage for Claude Agent in Xcode

### Prompt 1: Verify CLAUDE.md rule works

The approximate total token count at the end of the session for the first prompt was:


| Model | Input | Cache Create | Cache Read | Output | Total Tokens | Total Estimated Cost |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
|opus-4-8 |  6,051 | 28,582 | 97,732 | 1,194 | **~133,559** | **~$0.39** |

### Prompt 2: Trigger the review skill

The approximate total token count at the end of the session for the second prompt was:


| Model | Input | Cache Create | Cache Read | Output | Total Tokens | Total Estimated Cost |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
|opus-4-8 |  6,437 | 42,453 | 149,979 | 8,603 | **~207,472** | **~$0.74** |
