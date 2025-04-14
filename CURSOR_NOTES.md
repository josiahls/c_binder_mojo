Ok including a end file node is critical for finalizing nodes near the end of the file.
Note for new future: Need to add precompilation macro resolution. macro tests
will fail in mojo due to redefinitions of variables since the macros are acting as pass throughs.

I am hating the white spacing, scoping, etc in the api. We need to remove the col and row nums are 
actual fields for the nodes to use and switching to something else, either:
- use the presence of newline and tab presense, or simply use the parent / node types and relationships.

I'm leaning toward just throwing out this scoping stuff, and use the node types and relationships.