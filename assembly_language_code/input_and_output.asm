.model small
.stack 100h
.code
.data
main proc
    
    ;input procedure
    mov ah,1
    int 21h
    mov bl,al
    ;output procedure
    mov ah,2
    mov dl,bl
    int 21h
    
    
        
        exit:
        mov ah,4ch
        int 21h
        main endp
end main