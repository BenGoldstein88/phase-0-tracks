# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?

Version control is the process of creating save-points in  a block of code's life.

 Why is it useful?

 It allows different people to work on different features independently without mucking up the original codebase. It allows for reversion to previous configurations if bugs manifest. There's more, but i figure you get the gist.

* What is a branch and why would you use one?

A branch is a copy of the original code that you make changes too. Once you're happy with your changes, you can merge (or submit for merging) your new code into the original code. This way you couldn't possibly hurt the original code while making changes.

* What is a commit? What makes a good commit message?

A commit is a brief save-point during coding. It's a quick update on whatever you've just done, accompanied by a message that's clear, concise, and descriptive e.g. "Updated address in database" or "Added new feature called 'shockwave' ".

* What is a merge conflict?

If branches or versions don't match up (conflict) then git will notify you of this before you can merge the branch.