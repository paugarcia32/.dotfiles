---
<%-*
// check https://silentvoid13.github.io/Templater/introduction.html for more details
// split subjects into multiple lines, just to make things readable

const subject = await tp.system.suggester(
[
"XT",
"SCIOTRA",
"PE",
"TIQ"
], [
"XT",
"SCIOTRA",
"PE",
"TIQ"
], false, 
"Choose Subject");

const creationDate = tp.file.creation_date("dddd Do MMMM YYYY HH:mm")
await tp.file.rename(tp.file.creation_date("DD-MM-YYYY") + " -cn " + subject)

const subject2 = "[[" + subject + "]]"
%>
Creation Date: <%creationDate%>
Subject: <%subject%>
Teacher:
area: university
uniNote: class note
Related: "<%subject2%>"
---
