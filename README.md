# Take-Home Exam Template

## How do I build the exam text?

Just `make`. This will build a PDF called "temp.pdf". This is the temporary pdf
which will be overwritten each time you invoke make. This is done for temporary
drafting purposes. If you are keen on the details, see [`Makefile`](Makeifile)
and [`latexrun`](latexrun).

## How do I create a stable version of the exam text ?

Just `make release`. This will create a PDF with the date and time appended to
the file name. The symlink to the exam text is also updated.

## How do I add a part to the exam?

Keep the `.tex` files shallow. Use the `\input` macro to include what you need.
Everything starts at `master.tex`.
