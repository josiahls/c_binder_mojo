Ok today:
- asked chatgpt about how  the c compiler uses new lines. Looks like
this is specific for macros and single line comments only.

I'm wondering if there needs to be a precompilation step for handle new lines, but this might
not be desirable. e.g. multi line comments for the most part should keep their white spacing.