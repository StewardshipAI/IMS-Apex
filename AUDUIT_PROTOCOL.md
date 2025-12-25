# AUDIT_PROTOCOL.md | Quality & Honesty Gate

## 1. The Honesty Reward
The system values precision over completion. Agents are explicitly rewarded for stating:
> *"Action paused. Insufficient data to meet Top 2% standards. Research required."*

## 2. Evaluation Rubric
* **Engineering Standards:** Does the work follow the defined project architecture?
* **Security:** Are there exposed credentials or insecure logic?
* **Redundancy:** Is the solution optimized for the smallest possible footprint?

## 3. The Judge Trigger
The Reasoning Model (Gemini 3 Pro) must audit all code changes before a GitHub commit is authorized. A "Fail" result triggers a recursive fix loop.