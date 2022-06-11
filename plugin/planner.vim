"Title           : diary.vim
"Author          : Prashanth T P
"Creation Date   : 11 June 2022
"Last Modified   : 11 June 2022
"""

"only load once
if exists("g:loaded_todo_diary_plugin")
    finish
endif
let g:loaded_todo_diary_plugin=1


"expose following commands
command! -nargs=0 PlannerTodoDone call planner#PlannerTodoDone()
command! -nargs=0 PlannerTodoToggle call planner#PlannerTodoToggle()
command! -nargs=0 PlannerTodoInsert call planner#PlannerTodoInsert()
