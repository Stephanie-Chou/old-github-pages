# How could I not use a database
## Why?
Because I don't really need to store data because the markdowns are already saved locally.
Therefore, I don't need a title or anything.

## Why not?

Because I do need to have an id and possibly an abstract.
Just kidding. I do need a title.
Unless there is a way to go into the markdown and parse that out.


## so what is the real problem
there is no reason to go and fetch and parse every thing if I am only going to look at a few of those blog posts.
I should be fetching them individually on different page loads.
Currently I am not using the show path and I should definitely be using that.


## what to do?
# make a separate controller for the detail view.

potential issues
* the one I had before where I couldn't click on a link and go to the correct title. But that was because I was trying to do it ajaxically instead of CRUD
* I do need to make an ajax call on that click...
* can you combine a jquery listening event with angular?
