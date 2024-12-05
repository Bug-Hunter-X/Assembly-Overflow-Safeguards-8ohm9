mov ecx, some_valid_upper_bound ;check boundary condition
cmp ecx, [ebx]
jl overflow_error ;jump if ecx < ebx
mov eax, [ebx + 4*ecx] ;safe to read from memory nowoverflow_error:
; handle the overflow error, for example, exit program