 DEFINE VARIABLE wh AS WIDGET-HANDLE.
CREATE WIDGET-POOL "janela".
IF wh = ? OR NOT VALID-HANDLE(wh) THEN
CREATE WINDOW wh IN WIDGET-POOL "janela"
assign SENSITIVE = TRUE
       VISIBLE   = TRUE
       WIDTH-CHARS = 79
       height-chars = 10.
assign THIS-PROCEDURE:CURRENT-WINDOW = wh.

DEF VAR a AS CHAR INITIAL "1,12,10,20,1,1".
DEF VAR b AS CHAR INITIAL "2,10,1,12,0,0".
DEF VAR c AS CHAR INITIAL "3,11,2,21,1,0".

DEFINE VARIABLE RADIO-SET-1 AS INTEGER 
     VIEW-AS RADIO-SET horizontal 
     RADIO-BUTTONS 
          "FIFO", 1,
          "LFU", 2,
          "LRU", 3,
          "NRU", 4
     SIZE 28 BY 1 NO-UNDO.

DEFINE BUTTON BUTTON-1 
     LABEL "OK"
    AUTO-GO
     SIZE 15 BY 1.14.



UPDATE RADIO-SET-1
       BUTTON-1 .

IF RADIO-SET-1 = 1 THEN DO:

    IF ENTRY(2,a,",") < ENTRY(2,b,",") AND 
       ENTRY(2,c,",") > ENTRY(2,b,",") THEN DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 a 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.
    IF ENTRY(2,b,",") < ENTRY(2,a,",") AND
       ENTRY(2,a,",") > ENTRY(2,c,",") THEN DO:

       MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 b 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.

    ELSE DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 c 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.

    END.
END.

IF RADIO-SET-1 = 2 THEN DO:

    MESSAGE ENTRY(3,a,",") SKIP
            ENTRY(3,b,",") SKIP
            ENTRY(3,c,",")
        VIEW-AS ALERT-BOX INFO BUTTONS OK.

    IF ENTRY(3,a,",") < ENTRY(3,b,",") AND 
       ENTRY(3,c,",") > ENTRY(3,b,",") THEN DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 a 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.
    IF ENTRY(3,b,",") < ENTRY(3,a,",") AND
       ENTRY(3,a,",") > ENTRY(3,c,",") THEN DO:

       MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 b 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.

    IF ENTRY(3,c,",") < ENTRY(3,a,",") AND
       ENTRY(3,a,",") > ENTRY(3,b,",") THEN DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 c 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.

    END.
    
END.

IF RADIO-SET-1 = 3 THEN DO:

    IF ENTRY(4,a,",") < ENTRY(4,b,",") AND 
       ENTRY(4,c,",") > ENTRY(4,b,",") THEN DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 a 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.
    IF ENTRY(4,b,",") < ENTRY(4,a,",") AND
       ENTRY(4,a,",") > ENTRY(4,c,",") THEN DO:

       MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 b 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.

    ELSE DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 c 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.

    END.    
END.

IF RADIO-SET-1 = 4 THEN DO:

    IF ENTRY(5,a,",") = ENTRY(6,a,",") THEN DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 a 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.
    IF ENTRY(5,b,",") = ENTRY(6,b,",") THEN DO:

       MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 b 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.
        
    END.

    IF ENTRY(5,c,",") = ENTRY(6,c,",") THEN DO:

        MESSAGE "Frame |" "Temp Carg |" "Quant Refer |" "Temp ult Refer |" "BR |" "BM " skip 
                 c 
            VIEW-AS ALERT-BOX INFO BUTTONS OK.

    END.    
END.

