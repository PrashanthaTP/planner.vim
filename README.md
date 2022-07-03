# Planner.vim

>
> Vim plugin for diary/todo management
>

## Installation

+ Clone the repo
+ Add this line to vimrc

  ```vim
  let &runtimepath.=','.fnameescape("<full path to planner.vim directory>")
  ```

## Usage

Example Keybindings

```vim
nnoremap <leader>td :PlannerTodoDone<CR>
nnoremap <leader>tt :PlannerTodoToggle<CR>
nnoremap <leader>ti :PlannerTodoInsert<CR>
nnoremap <expr> <leader>tD planner#PlannerMoveToSection("# DONE")
```
