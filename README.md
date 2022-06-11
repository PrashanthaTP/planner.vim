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
nnoremap <leader>pd :PlannerTodoDone<CR>
nnoremap <leader>pt :PlannerTodoToggle<CR>
nnoremap <leader>pi :PlannerTodoInsert<CR>
```
