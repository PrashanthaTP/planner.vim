"Title           : diary.vim
"Author          : Prashanth T P
"Creation Date   : 11 June 2022
"Last Modified   : 11 June 2022
"""
function! planner#PlannerTodoDone()
 	let save_cursor = getcurpos()
    echomsg "[diary] toggled todo"
    let todoline = matchstr(getline("."),"\\s*[-+]\\s\[\\s*\\]")
    if empty(todoline)
        echomsg "[warning] not a todo line"
    else
        execute "normal 0f[a✅"
    endif
    
    call setpos(".",save_cursor) 

endfunction


function! planner#PlannerTodoToggle()
 	let save_cursor = getcurpos()
    echomsg "[diary] toggled todo"
    let todoline = matchstr(getline("."),"\\s*[-+]\\s\[.\\]")
    if empty(todoline)
        echomsg "[warning] not a todo line"
    else
        execute "normal 0f[di["
    endif
    
    call setpos(".",save_cursor) 

endfunction

function! planner#PlannerTodoInsert()
    execute "normal o- [] "
    startinsert!
endfunction

function! planner#PlannerLog()
    echomsg "[log] diary.vim loaded"
endfunction

