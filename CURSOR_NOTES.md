Ok we added the typedef node. Some thoughts:
- I'm worried about how flexible this is going to be and whether this is going to break later.
- We have the children nodes being generated. I'm not sure if adding a scope node would 
clean up the ast for the typedef output. Isk, atm the ast is a mess.