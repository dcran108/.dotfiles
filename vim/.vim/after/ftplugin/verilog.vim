vim9script

au BufReadPost *   if b:current_syntax == "verilog"| let b:verilog_indent_modules = 1| endif
