"Title           : diary.vim
"Author          : Prashanth T P
"Creation Date   : 11 June 2022
"Last Modified   : 11 June 2022
"""
function! planner#PlannerTodoDone()
    let save_cursor = getcurpos()
    let todoline = matchstr(getline("."),"\\s*[-+]\\s\[\\s*\\]")
    if empty(todoline)
        echomsg "[warning] not a todo line"
    else
        execute "normal 0f[a✅"
    endif
    
    call setpos(".",save_cursor) 

    echomsg "[diary] DONE"
endfunction


function! planner#PlannerTodoToggle()
    let save_cursor = getcurpos()

"echo matchstr(getline('.'),'\v[-+]\s?\[.?\]')
    let is_todoline = matchstr(getline("."),'\v\s*[-+]\s?\[.?\]')
    if empty(is_todoline)
        echomsg "[warning] not a todo line"
    else
        let is_done = matchstr(getline("."),"\\s*[-+]\\s\[✅\\]")
        if empty(is_done)
            "case : - [] yet to be complete
            execute "normal 0f[a✅"
        else
            execute "normal 0f[di["
        endif
    endif
    
    call setpos(".",save_cursor) 

    echomsg "[diary] toggled todo"

endfunction

function! planner#PlannerTodoInsert()
    execute "normal o- [] "
    startinsert!
endfunction


function! planner#PlannerMoveToSection(section)
    "https://stackoverflow.com/questions/56475817/vimscript-execute-search-does-not-work-anymore
    "       delete + search       + insert       + go back to prev location
    return "dd/".a:section."\<CR>"."\<ESC>o\<ESC>p"."\<ESC>\<C-o>"
endfunction

function! planner#PlannerLog()
    echomsg "[log] diary.vim loaded"
endfunction

