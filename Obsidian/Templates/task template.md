---
<%-*
// check https://silentvoid13.github.io/Templater/introduction.html for more details
// split subjects into multiple lines, just to make things readable

const title = await tp.system.prompt("Please enter a value")

const creationDate = tp.file.creation_date("dddd Do MMMM YYYY HH:mm")
await tp.file.rename(title + " -task")
%>
Creation Date: <%creationDate%>
project:
area: 
noteType: TaskNote
taskStatus: Open
Related: 
---



