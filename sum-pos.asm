
include irvine32.inc

.data
array sword -1, 2, 3, -4, 5 
msg1 byte "SUM OF POSITIVE NUMBER ", 0
CountMsg byte "TOTAL POSITIVE NUMBERS ", 0

.code
main proc
    mov esi, offset array
    mov ecx, lengthof array
    mov eax, 0         ;For suming positive numbers 
    mov ebx,           ;For Countig 

Next:
    mov dx, word ptr [esi]         ; store esi in register 
    test dx, 1000000000000000b     ; test for positive numbers
    jnz skip                       ; skip if zero  not flag is set

    add eax, edx                    ; add all positive numbers
    inc ebx                         ; add 1 after every positive  number found

skip:
    add esi, type array 
    loop Nexts

    mov edx, offset msg1
    call writestring                ; display string 
    call writedec
    call crlf

    mov edx, offset CountMsg
    call writestring           ;  show count 
    mov eax, ebx
    call writeint

    exit

main endp
end main
