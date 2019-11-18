.model small
.stack 100h
.data     

.code
main proc
    
    
    mov cx, 26 ;uppert limit
    mov ah,2
    mov dl,'A' ;initial Value
    level1: 
    
    int 21h       ;execute
    inc dl       ;increment
    loop level1   ;loop statement
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main