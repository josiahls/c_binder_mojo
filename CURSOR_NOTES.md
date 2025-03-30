Alright I think we are at the point where we can start trying to generate the mojo code side of things again.
The current issues that will need to be tackled:
- Whitespacing still sucks when viewing the outputs. things like tabs + spaces + newlines
really should be completely removed in the c ast since we are tracking the row numbers, and parents.
- Whitespace checking also just sucks. I think a token needs to describe whether it is white space, and
which type it is. That would also link together different areas that are using whitespace checks.

Some wins here:
- The control flow logic is way easier to reason about.
- MessageableEnum I think will make this even easier to reason about since every
node state and token flow can have a message associated with it.
- cursor appears to have an easier to plugging in new nodes.