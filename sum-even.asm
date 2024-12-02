


include irvine32.inc

.data
array sword 21, 22, 23, 24, 25 , 27 , 32 , 34 ,36
msg1 byte "SUM OF EVEN NUMBERS ", 0
CountMsg byte "TOTAL EVEN NUMBERS ", 0

.code
main proc
    mov esi, offset array
    mov ecx, lengthof array
    mov eax, 0   ; For suming odd numbers 
    mov ebx, 0   ;  for conuting 
Next:
    mov dx, word ptr [esi]          ;  store esi in registe
    test dx, 0001h       ; test is it odd 
    jnz skip              ; skip if zero flag is not set 


    add eax, edx           ; add  all even numbers
    inc ebx                ; add 1 after every even number found 
skip:
    add esi, type array
    loop Next
    mov edx, offset msg1
    call writestring    ;;display string 
    call writedec
    call crlf
    mov edx, offset CountMsg
    call writestring
    mov eax, ebx
    call writeint           ; show count 
    exit
main endp
end main
