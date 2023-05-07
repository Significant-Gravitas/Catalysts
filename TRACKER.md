# Re-Arch Work:
- see: https://github.com/Significant-Gravitas/Auto-GPT/labels/re-arch

## Issues:
- [#3652][3652] - (Re-Arch) Plugin API work

## Pull Requests:
- [#3853][3853] - (Re-Arch) Work to Decouple Logging into its own Interface.
- [#3850][3850] - (Re-Arch) Abstraction for the Language Model
- [#3831][3831] - (Re-Arch) Message Broker (?not sure what this is supposed to be yet)
- [#3824][3824] - (Re-Arch) Work to separate commands into plugins
- [#3805][3805] - (Re-Arch) Introduce a Configuration Abstraction for the Re-Arch
- [#3795][3795] - (Re-Arch) Introduce the Workspace Base Class
- [#3790][3790] - (Re-Arch) Planner Interface work
- [#3717][3717] - (Re-Arch) Agent State Encapsulation (I think this is supposed to actually describe the new architecture?)

# Code Decoupling/Inversion of Control Proposals:
- These proposals would need a Re-Arch.
## Issues:
- [#3775][3775] - Proposal to separate the math calculation functions into their own plugin
- [#3593][3593] - Proposal to separate the planner and executor into 2 separate agents.

# Observer/Regulatory Agents:
## Issues:
- [#3916][3916] - Proposal to Self-Regulate through Observer Agents

# TTS/STT Proposals:
## Pull Requests:
- [#3885][3885] - Proposal to add plain speech
- [#3568][3568] - Proposal to add StreamElements TTS
- [#3566][3566] - Proposal to make MacOS TTS configurable

# Save State/Caching Proposals:
## Issues:
- [#3933][3933] - Proposal to save state to disk via [Python Pickle](https://docs.python.org/3/library/pickle.html)
- [#430][430] - Resume state on connection loss restored

# Git Operations:
## Pull Requests:
- [#3815][3815] - Proposal to hardcode additional git operations
- [#364][364] - Proposal to hardcode additional git operations and add react support

# Bitcoin Operations:
## Pull Requests:
- [#749][749] - Proposal to hardcode bitcoin commands
  - **This PR hard codes the features (poor Inversion of Control) ☹**

# Bugs:
## Pull Requests:
- [#3580][3580] - pyobjc missing on Mac OS

[364]:https://github.com/Significant-Gravitas/Auto-GPT/issues/364
[430]:https://github.com/Significant-Gravitas/Auto-GPT/issues/430
[749]:https://github.com/Significant-Gravitas/Auto-GPT/issues/749
[3566]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3566
[3568]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3568
[3580]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3580
[3593]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3593
[3652]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3652
[3717]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3717
[3775]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3775
[3790]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3790
[3795]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3795
[3805]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3805
[3815]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3815
[3824]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3824
[3831]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3831
[3850]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3850
[3853]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3853
[3885]:https://github.com/Significant-Gravitas/Auto-GPT/pull/3885
[3916]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3916
[3933]:https://github.com/Significant-Gravitas/Auto-GPT/issues/3933