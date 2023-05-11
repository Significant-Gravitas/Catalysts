[gist]:https://gist.github.com/anonhostpi/97d4bb3e9535c92b8173fae704b76264#file-_topics-0005-api-0002-access-rate-limits-md
[source]:https://github.com/anonhostpi/AUTOGPT.TRACKERS/blob/main/TOPICS/0005.API/0002.ACCESS/RATE-LIMITS.md
[label_chunking]:https://github.com/Significant-Gravitas/Auto-GPT/labels/function%3A%20process%20text
[label_cost]:https://github.com/Significant-Gravitas/Auto-GPT/labels/API%20costs
[platform]:https://platform.openai.com
# Cost/Rate-Limit Handling Proposals
## Issues:
- [#3897][3897] - "DOUBLE CHECK CONFIGURATION" error
- [#1841][1841] - Proposal to chunk prompts and gracefully handle token overflows
- [#1441][1441] - API Rate Limit Reached - ***`--debug` flag related bug***
- [#1252][1252] - API Rate Limit Reached - Failed to Get Response (Dupe of #1189)
- [#1227][1227] - auto-gpt.json
  - caused by the low rate limite associated with not having a paid [platform.openai.com][platform] account
- [#1203][1203] - chat_completion - Failed to Get Response
- [#1189][1189] - API Rate Limit Reached - Failed to Get Response
- [#1174][1174] - auto-gpt.json
- [#1073][1073] - auto-gpt.json
- [#1047][1047] - API Rate Limit Reached
- [#585][585] - API Rate Limit Reached
- [#425][425] - API Rate Limit Reached
- [#235][235] - API Rate Limit Reached
- [#189][189] - API Rate Limit Reached
- [#79][79] - API Rate Limit Reached
- [#75][75] - API Rate Limit Reached

## Pull Requests:
- [#3919][3919] - (Re-Arch) Budget Manager Proposal
- [#3313][3313] - Budget Remaining Report Proposal
- [#1304][1304] - Proposal to add OpenAI paid account requirement to README.md
- [#214][214] - Proposal to "backoff" when OpenAI API caps out/throttles requests

## Useful Links:
[Gist][gist] | [Alt][source] | [Label: Chunking][label_chunking] | [Label: Cost][label_cost]

## Common Responses:
```
Rate Limit errors occur from 1 of 3 typical problems: Your usage of the API is way to high, you don't have a paid account, or you have hit your maximum financial usage for the month.

To clarify, [platform.openai.com][platform] and [chat.openai.com][chat] are two different tools with their own set of billings. You need to have a paid account on [platform.openai.com][usage] to use the API.

Please check your [API Usage and Billing here][usage], and please consult [the OpenAI wiki on their _various_ rate limits][wiki].

Closing issue as this is a limitation with your OpenAI Account.

[platform]:https://platform.openai.com/
[chat]:https://chat.openai.com/
[wiki]:https://platform.openai.com/docs/guides/rate-limits/what-are-the-rate-limits-for-our-api
[usage]:https://platform.openai.com/account/billing/overview
```

[75]:https://github.com/Significant-Gravitas/Auto-GPT/issues/75
[79]:https://github.com/Significant-Gravitas/Auto-GPT/issues/79
[189]:https://github.com/Significant-Gravitas/Auto-GPT/issues/189
[214]:https://github.com/Significant-Gravitas/Auto-GPT/issues/214
[235]:https://github.com/Significant-Gravitas/Auto-GPT/issues/235
[425]:https://github.com/Significant-Gravitas/Auto-GPT/issues/425
[585]:https://github.com/Significant-Gravitas/Auto-GPT/issues/585
[1047]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1047
[1073]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1073
[1174]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1174
[1189]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1189
[1203]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1203
[1227]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1227
[1252]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1252
[1304]:https://github.com/Significant-Gravitas/Auto-GPT/pull/1304
[1441]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1441
[1841]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1841
[3313]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3313
[3897]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3897
[3919]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3919