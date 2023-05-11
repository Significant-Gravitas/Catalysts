[gist]:https://gist.github.com/anonhostpi/97d4bb3e9535c92b8173fae704b76264#file-_topics-0005-api-0002-access-key-md
[source]:https://github.com/anonhostpi/AUTOGPT.TRACKERS/blob/main/TOPICS/0005.API/0002.ACCESS/KEY.md
[label]:https://github.com/Significant-Gravitas/Auto-GPT/labels/API%20access
# API Authorization Problems:
- Error Code 104: Bad Gateway usually means bad API Key
## Discussions:
- [#1311][1311] - Invalid OpenAI API Key

## Issues:
- [#4084][4084] - Invalid OpenAI API Key
- [#1914][1914] - OpenAI Key not set
- [#644][644] - Invalid OpenAI API Key

## Pull Requests:
- [#1304][1304] - Proposal to add OpenAI paid account requirement to README.md

## Useful Links:
[Gist][gist] | [Alt][source] | [Label][label]

## Common Responses:
```
It is important to note that [chat.openai.com][chat] and [platform.openai.com][platform] are not the same tools. Billing for one is completely different from the other.

Whenever making changes to [https://platform.openai.com][platform], you'll need to verify that the key didn't change or to regenerate one if needed.

[chat]:https://chat.openai.com/
[platform]:https://platform.openai.com
```

## Notes:
as found in [#4084][4084], having duplicate OPEANAI_API_KEY entries in the .env file can cause the Invalid API Key error.

[644]:https://github.com/Significant-Gravitas/Auto-GPT/issues/644
[1073]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1073
[1227]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1227
[1311]:https://github.com/Significant-Gravitas/Auto-GPT/discussions/1311
[1304]:https://github.com/Significant-Gravitas/Auto-GPT/pull/1304
[1914]:https://github.com/Significant-Gravitas/Auto-GPT/issues/1914
[4084]:https://github.com/Significant-Gravitas/Auto-GPT/issues/4084