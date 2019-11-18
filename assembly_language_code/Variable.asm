.model small
.stack 100h
.data     
a db 3 ;given value
b db ? ;take value from user
.code
main proc     
    ;data segment initial
    mov ax,@data
    mov ds,ax
    
    ;print
    mov ah,2
    add a,48
    mov dl,a
    int 21h ;excute  
    
       ;input
     mov ah,1
     int 21h
     mov b,al 
     
        ;print New Line
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,2
        mov dl,b
        int 21h
     
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
