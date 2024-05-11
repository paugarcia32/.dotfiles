---
area: BetterMe
betmeNote: journalDaily
---

<%*
let today = moment(tp.file.title);

// # 2023/01/01 - Sunday
tR += '# ' + today.format('YYYY/MM/DD - dddd') + '\n';

// 2023 / January / Week 1
tR += '[[' + today.format('YYYY/MM-MMMM') + '|' + today.format('MMMM') + ']] / ';
tR += '\n\n';

// ❮ 2022-12-31 <- 2023-01-01 -> 2023-01-02 ❯
tR += '❮ [[' + today.subtract(1, 'days').format('YYYY-MM-DD') + ']]';
tR += ' <- ' + today.add(1, 'days').format('YYYY-MM-DD') + ' -> ';
tR += '[[' + today.add(1, 'days').format('YYYY-MM-DD') + ']] ❯';
today.subtract(1, 'days');
%>

> [!todo] Daily Inbox

> A space to look back on the tasks that you created.

* [ ] 

> [!warning] Overdue

```tasks
has due date
not done
group by due
hide edit button
hide due date
```


> [!NOTE] Ephemeral Notes

- 



```dataview
table without id
file.link as Note,
file.folder as Folder,
file.mtime as "Last Modified"
FROM -"Dailies"
where file.mtime > (date(<%moment(tp.file.title).format('YYYY-MM-DD')%>))
sort file.mtime desc
```
