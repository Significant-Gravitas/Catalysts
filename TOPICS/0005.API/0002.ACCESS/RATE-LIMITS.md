# Cost/Rate-Limit Handling Proposals
- Chunking: https://github.com/Significant-Gravitas/Auto-GPT/labels/function%3A%20process%20text
- Cost: https://github.com/Significant-Gravitas/Auto-GPT/labels/API%20costs
## Issues:
- [#3897][3897] - "DOUBLE CHECK CONFIGURATION" error
- [#1841][1841] - Proposal to chunk prompts and gracefully handle token overflows
- [#1441][1441] - API Rate Limit Reached

### Common Response:
```
Rate Limit errors occur from 1 of 3 typical problems: Your usage of the API is way to high, you don't have a paid account, or you have hit your maximum financial usage for the month.

Please check your [API Usage][API].

Closing issue as this is a limitation with your OpenAI Account.

[API]:https://platform.openai.com/account/billing/overview
```

## Pull Requests:
- [#3919][3919] - (Re-Arch) Budget Manager Proposal
- [#3313][3313] - Budget Remaining Report Proposal
- [#214][214] - Proposal to "backoff" when OpenAI API caps out/throttles requests

[1841]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1841
[3313]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3313
[3897]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3897
[3919]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3919