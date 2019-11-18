.model small
.stack 100h
.data
.code
main proc 
    ;first input
        mov ah,1
        int 21h
        mov bl,al
     ;print new line
          mov ah,2
          mov dl,10
          int 21h
          mov dl,13
          int 21h      
     ;second input     
          mov ah,1
          int 21h
          mov bh,al  
     ;print new line  
          mov ah,2
          mov dl,10
          int 21h
          mov dl,13
          int 21h    
     ;show first input    
          mov ah,2
          mov dl,bl
          int 21h
     ;print new line              
          mov ah,2
          mov dl,10
          int 21h
          mov dl,13
          int 21h 
     ;show second input               
          mov ah,2
          mov dl,bh
          int 21h     
     ;beep sound
          mov ah,2
          mov dl,07
          int 21h
    exit:
    mov ah,4ch
    int 21h
     main endp
end main