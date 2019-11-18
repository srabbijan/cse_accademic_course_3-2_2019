.model small
.stack 100h
.data
a db 10,13,'digit1 $'
b db 10,13,'digit2 $'
c db 10,13,'result $'
.code
main proc
    ;load data
    mov ax,@data
    mov ds,ax
     ;show digit1
    mov ah,9
    lea dx,a
    int 21h
     ;take first digit
    mov ah,1  
    int 21h
    mov bl,al
    
     ;show digit2
    mov ah,9
    lea dx,b
    int 21h 
     ;take second digit
    mov ah,1  
    int 21h
    mov bh,al
     
     ;show result
    mov ah,9
    lea dx,c
    int 21h   
     ;add
    sub bl,bh
     ;sub for ascii code
    add bl,48
     ;show sub
    mov ah,2
    mov dl,bl
    int 21h
      ;exit section
    exit:
    mov ah,4ch
    int 21h
    main endp
end main