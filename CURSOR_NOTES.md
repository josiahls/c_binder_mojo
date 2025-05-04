Ok:
- having nodes opt in on how they arent to handle newlines is a good idea.
- line continuations need to be handled differently, probably in the tokenizer itself. Probably just removing the newline continuation, then ignore the resulting new line.