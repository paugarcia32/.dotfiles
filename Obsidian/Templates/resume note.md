---
<%-*
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


const title = await tp.system.prompt("Please enter a value") 

// contents in brackets are just for format
const creationDate = tp.file.creation_date("dddd Do MMMM YYYY HH:mm")
await tp.file.rename(title + " -r " + subject)
const subject2 = "[[" + subject + "]]"
%>

Creation Date: <%creationDate%>
Subject: <%subject%>
area: university
uniNote: resume
Related: "<%subject2%>"
---
