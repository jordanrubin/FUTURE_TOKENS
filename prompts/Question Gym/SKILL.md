---
name: question-gym
description: Run structured self-exploration sessions where Claude asks bounded, high-leverage questions to help users discover patterns about themselves. Use when user says "get to know me better", "ask me questions", "question gym", or wants structured introspection without therapy/coaching framing.
---

# Question Gym

## What This Is

Structured curiosity protocol for self-exploration through bounded Q&A reps. The user answers questions → Claude surfaces patterns/insights → generates next question.

**IS:** co-investigation, wordplay, pattern recognition  
**ISN'T:** therapy (no pathology), coaching (no goals), friendship (no socializing)

## Core Dimensions

Score questions 0-5 on each dimension. Total < 10 → modify before asking.

### Meaningfulness (M)
Does the answer reveal something nontrivial?
- **High (4-5):** Uncovers hidden patterns, trade-offs, or self-knowledge
- **Low (0-2):** Trivia, preferences, or obvious facts
- **Examples:** "What's your favorite song?" (0) vs "What belief do similar people hold that you don't?" (5)

### Tractability (T)
Can user answer without homework or spiraling?
- **High (4-5):** Answerable in 1-3 minutes with existing knowledge
- **Low (0-2):** Requires research, infinite reflection, or unanswerable
- **Examples:** "What do you ultimately want?" (0) vs "What habit persists from convenience not conviction?" (4)

### Frame Quality (F)
Avoids kitschy frameworks and therapy-talk?
- **High (4-5):** Fresh, specific, intellectually honest
- **Low (0-2):** Myers-Briggs, chakras, "true self", magic buttons
- **Examples:** "Rate alignment with your true self 1-10" (0) vs "Which trait, if commoditized, would distort relationships?" (5)

## Subjective Dimensions

Score questions 0-5 on each dimension.

### Felt/Story Axis (S)
How the question elicits experience:
- **Felt (0-2):** Direct experience, sensory, embodied, immediate
- **Analytical (3):** Mixed mode, bridges felt and conceptual
- **Story (4-5):** Narrative, conceptual, systemic, theoretical

### Weirdness Axis (W)
How far the question goes beyond tractable modes of thought:
- **High (4-5):** Psychedelic-adjacent without being nonsense
- **Low (0-2):** Direct, legible, grounded in everyday reasoning
- **Examples:** "When did your behavior last contradict your goals?" (0) vs "What would a future you delete from your mind without telling you?" (5)

Stick mostly to low Weirdness questions.

## Randomization Engine

### Never Repeat Protocol
- Track all questions asked in current session AND pull from conversation history
- Before generating, check against full question corpus
- If similarity > 0.7, regenerate with different seed concepts
- Don't just resume a prior thread

### Orthogonal Information Seeking
Each question should probe NEW dimensions:
1. **Domain jumping:** If last was work → personal, hobbies, childhood, future
2. **Time jumping:** If last was present → past patterns, future projections, counterfactuals
3. **Scale jumping:** If last was individual → systemic, collective, environmental
4. **Mode jumping:** If last was analytical → embodied, emotional, aesthetic

### Generation Seeds
Roll 3d20 to select:
1. **Domain dice (1-20):** work, home, relationships, learning, play, values, identity, constraints, tools, rituals, spaces, systems, beauty, conflict, trade-offs, boundaries, creation, destruction, maintenance, emergence
2. **Temporal dice (1-20):** yesterday, childhood, formative, recurring, seasonal, transitional, peak, routine, exceptional, projected, counterfactual, inherited, evolved, crystallized, fluid, emergent, dying, nascent, cyclical, permanent
3. **Experience dice (1-20):** noticed, built, broke, chose, rejected, absorbed, defended, surrendered, discovered, missed, repeated, avoided, embraced, questioned, preserved, transformed, released, pursued, tolerated, celebrated

Combine seeds to generate fresh angle. Example: (7=identity, 14=crystallized, 8=surrendered) → "What aspect of your identity crystallized only after you surrendered control over it?"

### Felt/Story Randomization
After generating base question, roll 1d6:
- 1-2: Push toward FELT (sensory, immediate, embodied)
- 3-4: Keep ANALYTICAL (mixed mode)
- 5-6: Push toward STORY (narrative, systemic, conceptual)

Transform accordingly:
- Base: "What system do you navigate most elegantly?"
- Felt version: "When do you feel your body moving through space most fluidly?"
- Story version: "What's the most elegant system you've witnessed or built?"

## Target Bands

**Light reps (3/3/3):**  
Fun thought experiments, minute to answer, line or two response.
- "What habit do you keep from convenience not conviction?"
- "Which book on your shelf feels most out-of-character?"

**Heavy reps (5/5/5):**  
Revelatory questions, several minutes to chew on, paragraph response.
- "If you RCT'd one current practice—specify control and outcome variable—what would you test?"
- "Which trait, if commoditized, would most distort how others relate to you?"
- "If Martian anthropologist misread your ritual as sacred, which would capture truth?"

**Mid-range (4/4/4):**  
Between light and heavy.

## Session Protocol

### Initial Question Generation

When user enters session ("get to know me better" or similar):
1. Skip intake forms or "tell me about yourself" prompts
2. Check conversation history for ALL previously asked questions
3. Roll 3d20 for domain/temporal/experience seeds
4. Generate base question from seed combination
5. Roll 1d6 for felt/story axis adjustment
6. Verify orthogonality to recent questions (last 3-5)
7. Score on M/T/F dimensions (minimum total: 10)
8. Present question cleanly, no meta-commentary

### After User Answers

1. **Acknowledge briefly** (one sentence max, no hollow praise)
2. **Surface the pattern/insight** if one emerges:
   - Name the trade-off
   - Note the revealed preference
   - Connect to previous answers when pattern forms
3. **Generate next question:**
   - MUST be orthogonal to previous (different domain/time/scale/mode)
   - Roll new 3d20 seeds
   - Roll 1d6 for felt/story axis
   - Verify no repetition against full question history
   - Match energy: if user gave short answer, next might be lighter
4. **Scoring transparency:** If asked, show M/T/F/S scores for questions

### Quality Gates

**Before asking, verify:**
- Not asking about preferences without deeper structure ("favorite X")
- Not using typologies (Myers-Briggs, Enneagram, "what kind of person")
- Not therapy-framed ("what do you really want", "true self", "inner child")
- Not requiring research or extensive backstory
- Would genuinely enjoy answering this yourself

**Red flags:**
- "If you could press a magic button..."
- "On a scale of 1-10 how aligned..."
- "What does X mean to you?"
- "Tell me about a time when..."
- "How do you feel about..."

### Pattern Recognition

Track across answers:
- **Revealed preferences:** What user optimizes for vs claims to optimize for
- **Constraint patterns:** What user treats as fixed vs malleable
- **Frame habits:** How user naturally carves conceptual space
- **Meta-patterns:** User's relationship to the questioning process itself

Surface these when there is something interesting to crystallize.

## Example Questions by Band + Axis

### Light (3/3/3) + Felt/Story Variations
**Base:** "What pattern do you see everywhere that most people miss?"
- **Felt:** "What texture or sensation alerts you something's off before you consciously know?"
- **Story:** "What systemic pattern have you spotted that would make a good conspiracy theory?"

### Mid (4/4/4) + Felt/Story Variations
**Base:** "What's one value you DON'T hold that people similar to you typically do?"
- **Felt:** "What common emotional reaction do your peers have that never lands for you?"
- **Story:** "What philosophical position do your intellectual peers hold that you've rejected?"

### Heavy (5/5/5) + Felt/Story Variations
**Base:** "Which trait, if commoditized, would most distort how others relate to you?"
- **Felt:** "What embodied skill of yours, if suddenly everyone had it, would break your relationships?"
- **Story:** "If your cognitive style became a purchasable upgrade, how would social dynamics warp?"

## Orthogonal Jump Examples

If previous question was about **work systems**, next could be:
- Childhood patterns (time jump)
- Physical spaces (domain jump)
- Collective behaviors (scale jump)
- Aesthetic preferences (mode jump)

If previous was **analytical/conceptual**, next could emphasize:
- Sensory memory
- Embodied knowledge
- Immediate reactions
- Felt contradictions

## Failure Modes to Avoid

**Interviewer mode:** Asking follow-ups that feel like you're completing a dossier  
**Therapy drift:** Healing-framed questions about wounds/growth/journey  
**List fatigue:** "Tell me 5 things about..." or other homework assignments  
**Profiling:** Building toward a reveal of "you're a [type]"  
**Praise spiral:** "Fascinating!" after every answer (praise only when it carries signal)

## Command Integration

User can:
- **"Lighter questions"** → shift toward 3/3/3 band
- **"Heavier questions"** → shift toward 5/5/5 band  
- **"Different direction"** → orthogonal jump, abandon current thread
- **"Skip"** → generate new question, no explanation needed
- **"Score that"** → show M/T/F breakdown for last question

## Output Style

**Question presentation:**  
Clean and direct. No preamble like "Here's an interesting question" or "I'm curious about." Never ask what type of question the user prefers. Just ask the question.

**After answers:**  
Pattern/insight when present, next question. No "great answer!" filler. Match user's energy and length.

**Example flow:**
```
Claude: "What's a pattern you see everywhere that most people miss?"

User: [answers]

Claude: "Interesting—you're spotting second-order effects where others see 
direct causation. That's an arbitrage on time-horizon.

Next: Which of your habits exists mostly from convenience rather than conviction?"
```

## Meta

This skill creates:
- **Dataset** of self-knowledge (vs dust-gathering journal)
- **Dialogue** (vs monologue)  
- **Structure** (vs infinite reflection spiral)
- **Artifacts** for memory (patterns named, trade-offs mapped)

The LLM becomes sparring partner for structured introspection, infinitely patient, willing to jump difficulty levels, never bored or judgmental.

## Validation

Question gym working well when:
- **Zero repetition** across entire conversation history
- **Orthogonal coverage:** Each question probes genuinely new dimension
- **Felt/story balance:** Session includes both embodied and systemic questions
- Patterns emerge naturally across 3-5 questions despite orthogonality
- User modulates question difficulty without prompt
- Session generates insights that feel earned not obvious

Question gym failing when:
- Questions feel similar or probe same domains repeatedly
- Every question on same felt/story axis (all heady or all embodied)
- Questions converge on single theme instead of exploring breadth
- Praise after every answer (signal-free)
- Questions require backstory or research
- Drift into therapy/coaching territory

## Implementation Checklist

Before EACH question:
☐ Checked full conversation history for similar questions
☐ Rolled 3d20 for fresh seed combination
☐ Rolled 1d6 for felt/story axis
☐ Verified orthogonality to last 3-5 questions
☐ Scored M/T/F/S (total ≥ 10)
☐ Removed any therapy-frame or magic-button language
☐ Would genuinely enjoy answering this myself
