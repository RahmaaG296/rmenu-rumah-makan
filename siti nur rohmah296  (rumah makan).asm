
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; siti nur rohmah
; 2200018296

; add your code here 

.MODEL LARGE
.STACK 1000H
.DATA
M1 DB 10,13,10,13,'        ****Selamat Datang di RM Amanah****$',10,13 
M2 DB 10,13,10,13,'masukkan pilihan anda : $'

M3 DB 10,13,'  **                 1.sarapan                 **$' 
M4 DB 10,13,'  **                 2.makan siang             **$'
MS5 DB 10,13,'  **                 3.makan malam             **$'
M5 DB 10,13,'  **                 4.camilan                 **$'
M6 DB 10,13,'  **                 5.dessert                 **$'
M7 DB 10,13,'  **                 6.minuman                 **$'  
               
               
M8 DB 10,13,10,13,'             ***pilih makanan kamu dari menu***$'
  
;BREAKFAST  
M9 DB 10,13,'  **           1.Roti Selai              10/-                      **$' ;breakfast
M10 DB 10,13,'  **           2.nasi uduk               10/-                      **$'
M11 DB 10,13,'  **           3.nasi bakar              10/-                      **$'
M12 DB 10,13,'  **           4.bubur ayam              10/-                      **$'
M13 DB 10,13,'  **           5.nasi pecel              10/-                      **$'
M14 DB 10,13,'  **           6.nasi rawon              20/-                      **$'
M15 DB 10,13,'  **           7.lontong ayur            10/-                      **$'
M16 DB 10,13,'  **           8.Fried Egg               20/-                      **$'
M17 DB 10,13,'  **           9.Goats Feet              60/-                      **$' 

 

;lunch & dinner 

M25 DB 10,13,'  **  1.pecel sayur                            20/-                **$' 
M26 DB 10,13,'  **  2.Chicken Birani(Kabab+Egg)              50/-                **$' 
M27 DB 10,13,'  **  3.nasi goreng                            20/-                **$' 
M28 DB 10,13,'  **  4.bebek penyet                           30/-                **$'
M29 DB 10,13,'  **  5.ayam bakar                             20/-                **$'
M30 DB 10,13,'  **  6.sayur bayam                            10/-                **$'
M31 DB 10,13,'  **  7.sayur nangka                           10/-                **$'
M32 DB 10,13,'  **  8.Lobstar Big/Small                      30/-                **$'
M33 DB 10,13,'  **  9.Koi Fish                               30/-                **$'
 
 
;DINNER

M18 DB 10,13,'  **  1.capcay                  20/-                               **$'
M19 DB 10,13,'  **  2.sup ayam                20/-                               **$'
M20 DB 10,13,'  **  3.ayam goreng lengkuas    40/-                               **$' 
M21 DB 10,13,'  **  4.tongseng jamur          30/-                               **$'
M22 DB 10,13,'  **  5.tomyam seafood          50/-                               **$'
M23 DB 10,13,'  **  6.sosis barbeque          40/-                               **$'
M34 DB 10,13,'  **  7.ikan nila bakar         30/-                               **$'
M35 DB 10,13,'  **  8.ikan gurame bakar       40/-                               **$'
M36 DB 10,13,'  **  9.Molay/Kaski Fish        60/-                               **$'
;M37 DB 10,13,'13.Chicken Roast                         60/-$' 
;M38 DB 10,13,'14.Egg Curry                             30/-$'
;M39 DB 10,13,'15.Vagetable                             20/-$'
;M40 DB 10,13,'16.Shirmp Mash/Bhorta                    20/-$'
 
 
;camilan

M41 DB 10,13,'  **  1.banana pom pom    8/-                  **$'
M42 DB 10,13,'  **  2.kebab            15/-                  **$'
M43 DB 10,13,'  **  3.pisang coklat    10/-                  **$'
M44 DB 10,13,'  **  4.cireng ayam kare  12/-                 **$'


;dessert
M45 DB 10,13,'  **  1.coklat lava        20/-                           **$' 
M46 DB 10,13,'  **  2.Puding            20/-                           **$'
M47 DB 10,13,'  **  3.es pisang ijo     15/-                           **$'
M48 DB 10,13,'  **  4.pancake mangga     20/-                           **$'


;DRINKS
M49 DB 10,13,'  **  1.teh                    5/-                      **$'
M50 DB 10,13,'  **  2.esjeruk                5/-                      **$'
M51 DB 10,13,'  **  3.susu                   6/-                    **$'
M52 DB 10,13,'  **  4.extrajoss              5/-                    **$'
M53 DB 10,13,'  **  5.kopi                   7/-                      **$'
M54 DB 10,13,'  **  6.air putih              3/-                      **$'



;INVALID
M55 DB 10,13,10,13,'***&&INVALID ENTRY&&***$'
M56 DB 10,13,'      ***&&Try Again&&***$'



M57 DB 10,13,10,13,'masukkan piihan anda : $'
M58 DB 10,13,'jumlah : $'
M59 DB 10,13,'Total harga : $'


MINUMAN DB ?
JUMLAH DB ?


M60 DB 10,13,10,13,'1.kembali ke menu : $'
M61 DB 10,13,'2.KELUAR$'

;STAR RESIZE


MR1 DB 10,13,'  **                                           **$'
MR2 DB 10,13,'  ***********************************************$'

MR3 DB 10,13,'  **                                           **$'


MR4 DB 10,13,'  **                                                               **$'
MR5 DB 10,13,'  *******************************************************************$'



MR6 DB 10,13,'  **                                          **$'
MR7 DB 10,13,'  **********************************************$'


SEJ DB 10,13,10,13,' $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  TOP:
  
    LEA DX,M1
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
       
    LEA DX,MR2
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR3
    MOV AH,9
    INT 21H   
    
    
     
    
    LEA DX,M3
    MOV AH,9
    INT 21H
    
    LEA DX,M4
    MOV AH,9
    INT 21H
    
    LEA DX,MS5
    MOV AH,9
    INT 21H
    
    LEA DX,M5
    MOV AH,9
    INT 21H
    
    LEA DX,M6
    MOV AH,9
    INT 21H
    
    LEA DX,M7
    MOV AH,9
    INT 21H
    
    LEA DX,MR1
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,MR2
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H
    
     
     
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE BREATFAST
    
    CMP BH,2
    JE LD   
     
    CMP BH,3
    JE DINNER 
    
    
    CMP BH,4
    JE SNACKS
     
     
    CMP BH,5
    JE SWEATMEAT
    
    CMP BH,6
    JE DRINKS
    
    
    JMP INVALID
    
       
    
    
   BREATFAST:
    
    
    LEA DX,M8    ;BREATFAST STARTS
    MOV AH,9
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
   
    LEA DX,M9    ;item 1
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M10  ;item 2
    MOV AH,9
    INT 21H
    
    LEA DX,M11
    MOV AH,9          ;3nd
    INT 21H 
    
    LEA DX,M12
    MOV AH,9           ;4rd
    INT 21H
    
    
    LEA DX,M13         ;5th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M14     ;6th
    MOV AH,9
    INT 21H
            
    
    LEA DX,M15
    MOV AH,9           ;7th
    INT 21H
            
            
    LEA DX,M16        ;8th
    MOV AH,9
    INT 21H 
    
    LEA DX,M17         ;9th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE TEN
    
    CMP BL,2
    JE TEN
    
    CMP BL,3
    JE TEN 
    
    CMP BL,4
    JE TEN
    
    CMP BL,5
    JE TWENTY
    
    CMP BL,6
    JE TWENTY
    
    CMP BL,7
    JE TEN
    
    CMP BL,8
    JE TWENTY 
    
    CMP BL,9
    JE SIXTY
    
    ;CMP BL,10
    ;JE SIXTY  
    
    ;CMP BL,11
    ;JE EIGHTY
    
    ;CMP BL,12
    ;JE EIGHTY
    
    ;CMP BL,13
    ;JE FOURTY
    
    ;CMP BL,14
    ;JE FIFTY 
    
    ;CMP BL,15
    ;JE SEVENTY
    
    ;CMP BL,14
    ;JE SEVENTY
    
    JMP INVALID 
      
   FOURTY:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   FIFTY:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
           
           
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    ;MAIN  MENU
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
             
   SEVENTY:
    MOV BL,7
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H       ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
         
   EIGHTY:
    MOV BL,8
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2    ;MAIN MENU
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT         
    
    JMP EXIT
    
    
    
    
     
     
    LD:
                    ;LUNCH AND DINNER
    LEA DX,M8
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
     
    LEA DX,MR5
    MOV AH,9
    INT 21H
                  ;STAR BORDER
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
     
    
    LEA DX,M25               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M26               ;2th
    MOV AH,9
    INT 21H
    
    LEA DX,M27               ;3rd
    MOV AH,9
    INT 21H  
    
    LEA DX,M28               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M29               ;5th
    MOV AH,9
    INT 21H                        
    
    
    LEA DX,M30               ;6th
    MOV AH,9
    INT 21H 
    
    LEA DX,M31               ;7th
    MOV AH,9
    INT 21H 
    
    LEA DX,M32               ;8th
    MOV AH,9
    INT 21H  
    
    LEA DX,M33               ;9th
    MOV AH,9
    INT 21H
    
    ;LEA DX,M34               ;10th
    ;MOV AH,9
    ;INT 21H
    
    
    ;LEA DX,M35               ;11th
    ;MOV AH,9
    ;INT 21H 
    
    ;LEA DX,M36               ;12th
    ;MOV AH,9
    ;INT 21H      
       
    
    ;;LEA DX,M37               ;13th
    ;MOV AH,9
    ;INT 21H 
    
    ;LEA DX,M38               ;13th
    ;MOV AH,9
    ;INT 21H 
    
    ;LEA DX,M39               ;15th
    ;MOV AH,9
    ;INT 21H
    
    ;LEA DX,M40               ;16th
    ;MOV AH,9
    ;INT 21H
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
                    ;STAR BORDER
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE TWENTY  
    
    CMP BL,2
    JE FIFTY
    
    CMP BL,3
    JE TWENTY
    
    CMP BL,4
    JE THIRTY
    
    CMP BL,5
    JE TWENTY
    
    CMP BL,6
    JE TEN
    
    CMP BL,7
    JE TEN
    
    CMP BL,8
    JE THIRTY 
    
    CMP BL,9
    JE THIRTY
    
    ;CMP BL,10
    ;JE SIXTY
    
    ;CMP BL,11
    ;JE SIXTY
    
    ;CMP BL,12
    ;JE SIXTY
    
    ;CMP BL,13
    ;JE SIXTY
    
    ;CMP BL,14
    ;JE THIRTY 
    
    ;CMP BL,15
    ;JE  TWENTY
    
    ;CMP BL,14
    ;JE TWENTY
    
    JMP INVALID
    
   TEN:
    MOV BL,1
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
     
    ;GO BACK TO MAIN MENU 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H          
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
   
   
    
   TWENTY:
   
    MOV BL,2
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
   THIRTY:
   
    MOV BL,3
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H  
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
    
   SIXTY: 
   
    MOV BL,6
   
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
    
      
   NINETY:
    MOV BL,9
    
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H 
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
    
    
 
    
    JMP EXIT 
    
    
    
    
    
    
    
    
  DINNER:
    LEA DX,M8
    MOV AH,9         ;DINNER STARTS
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H
    
    LEA DX,MR5
    MOV AH,9
    INT 21H      ;BORDER
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,M18         ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M19
    MOV AH,9              ;12th
    INT 21H
    
    
    LEA DX,M20          ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M21
    MOV AH,9                ;4th
    INT 21H  
    
    
    LEA DX,M22              ;5th
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M23               ;6th
    MOV AH,9
    INT 21H
    
     
    LEA DX,M34               ;10th
    MOV AH,9
    INT 21H
    
    
    LEA DX,M35               ;11th
    MOV AH,9
    INT 21H 
    
    LEA DX,M36               ;12th
    MOV AH,9
    INT 21H
    
    
    
    LEA DX,MR4
    MOV AH,9
    INT 21H
    
    LEA DX,MR5   ;BORDER
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR5
    MOV AH,9
    INT 21H   
    
    
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE TWENTY
    
    CMP BL,2
    JE TWENTY
    
    CMP BL,3
    JE FOURTY 
    
    CMP BL,4
    JE THIRTY
    
    CMP BL,5
    JE FIFTY
    
    CMP BL,6
    JE FOURTY
    
    CMP BL,7
    JE THIRTY
    
    CMP BL,8
    JE FOURTY 
    
    CMP BL,9
    JE SIXTY
    
   FOURTY1:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
 
   
    
  FIFTY1:
    MOV BL,4
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
           
           
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48    ;MAIN  MENU
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
  
    
    
   
   
   
   
   
   
   SIXTY1: 
   
    MOV BL,6
   
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H             ;MAIN MENU
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
    
    
    
   SEVENTY1:
    MOV BL,7
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H 
    
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU 
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H       ;MAIN MENU
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT
         
   EIGHTY1:
    MOV BL,8
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2    ;MAIN MENU
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT         
    
    JMP EXIT
 
    
    
    
    
    
    
    
    
    
  SNACKS:
    LEA DX,M8
    MOV AH,9         ;SNACKS STARTS
    INT 21H
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,M41               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M42               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M43               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M44               ;4th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H 
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE L1
    
    CMP BL,2
    JE L2
    
    CMP BL,3
    JE L3
    
    CMP BL,4
    JE L3
    
    JMP INVALID
    
    
   L1: 
    MOV BL,8
    JMP L4
   
   L2:
    MOV BL,8
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT 
    
   
   L3:
   MOV BL,5
   JMP L4 
   
   
   L4:
    LEA DX,M58              
    MOV AH,9
    INT 21H 
  
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    
    ;GO BACK TO MAIN MENU
    
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
     
   
 
    
    JMP EXIT
    
    
    
  SWEATMEAT:
  
    LEA DX,M8
    MOV AH,9        ;SWEAT MEAT    STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    LEA DX,M45               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M46               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M47               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M48               ;4th
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
     
    CMP BL,4
    JG INVALID
    
    LEA DX,M58              
    MOV AH,9
    INT 21H 
    
    XOR BL,BL
    MOV BL,5
    
    MOV AH,1
    INT 21H
    SUB AL,48
     
    
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
    ;FOR /- PRINT
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    
    
    JMP EXIT
    
    
   DRINKS:  
    LEA DX,M8
    MOV AH,9            ;DRINKS STARTS
    INT 21H 
    
    LEA DX,SEJ ;NEWLINE
    MOV AH,9
    INT 21H
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
   
   
    LEA DX,M49               ;1th
    MOV AH,9
    INT 21H 
    
    LEA DX,M50               ;2th
    MOV AH,9
    INT 21H                         
    
    LEA DX,M51               ;3th
    MOV AH,9
    INT 21H
    
    LEA DX,M52               ;4th
    MOV AH,9
    INT 21H 
    
    LEA DX,M53               ;5th
    MOV AH,9
    INT 21H
    
    LEA DX,M54               ;6th
    MOV AH,9
    INT 21H
    
    LEA DX,MR6
    MOV AH,9
    INT 21H
    
    
    LEA DX,MR7
    MOV AH,9
    INT 21H     ;BORDER
    
    LEA DX,MR7
    MOV AH,9
    INT 21H
    
    LEA DX,M57              
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48 
    
    CMP BL,1
    JE teh
    
    CMP BL,2
    JE esjeruk
    
    CMP BL,3
    JE susu
    
    CMP BL,4
    JE extrajoss
    
    CMP BL,5
    JE kopi  
    
    CMP BL,6
    JE airputih 
    
    JMP INVALID
    
   teh:
    MOV BL,5
    JMP COMMON
    
   esjeruk:
    MOV BL,5
    JMP COMMON
   
    
   susu:
    MOV BL,6
    JMP COMMON
    
   extrajoss:
    MOV BL,5
    JMP COMMON
    
    
   kopi:
    MOV BL,7
    JMP COMMON
    
 
   airputih:
    MOV BL,3
    JMP COMMON
   
   
    
    
   COMMON: 
    LEA DX,M58              
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    MUL BL 
    AAM 
 
    MOV CX,AX 
    ADD CH,48
    ADD CL,48
    
    
    LEA DX,M59              
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CH
    INT 21H
    
    
    MOV DL,CL
    INT 21H 
    
    
    MOV DL,47
    INT 21H
    MOV DL,45
    INT 21H
    
    ;GO BACK TO MAIN MENU
    
    LEA DX,M60
    MOV AH,9
    INT 21H
    
    LEA DX,M61
    MOV AH,9
    INT 21H
    
    LEA DX,M2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    
    
    
    CMP AL,1
    JE TOP
    
    JMP EXIT:
    
    
   INVALID:
   
    LEA DX,M55
    MOV AH,9
    INT 21H 
    
    
    LEA DX,M56 
    MOV AH,9
    INT 21H 
    
    
    
    JMP EXIT 
    
        
    
    
     EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

ret




