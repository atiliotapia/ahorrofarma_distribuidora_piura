

SELE A
USE MEDICTDO
SET FILTE TO REGISTRO<100000
SELE B
USE D:\DISTRIBUIDORA\SIGEF31AGO\Sistema_ventas\FACTURAR\MEDICTDO
SET ORDE TO REGISTRO
SELE A
GO TOP
DO WHILE !EOF()
   REG=REGISTRO
   SELE B
   SEEK REG
   IF FOUN()
      TIPOVTA=TIPO_VTA
      CTA=CUENTA_C
      P1=prec_uni1
      c1=cantid1
      P2=prec_uni2
      c2=cantid2
      P3=prec_uni3
      c3=cantid3
      P4=prec_uni4
      c4=cantid4
      P5=prec_uni5
      c5=cantid5
      P6=prec_uni6
      c6=cantid6
      P7=prec_uni7
      c7=cantid7
      P8=prec_uni8
      c8=cantid8
      P9=prec_uni9
      c9=cantid9
      P10=prec_uni10
      c10=cantid10
      ex=exonerar

      SELE A
      REPLA TIPO_VTA WITH TIPOVTA
      REPLA CUENTA_C WITH CTA

      REPLA prec_uni1 with P1
      REPLA cantid1 with c1
      REPLA prec_uni2 with P2
      REPLA cantid2 with c2
      REPLA prec_uni3 with P3
      REPLA cantid3 with c3
      REPLA prec_uni4 with P4
      REPLA cantid4 with c4
      REPLA prec_uni5 with P5
      REPLA cantid5 with c5
      REPLA prec_uni6 with P6
      REPLA cantid6 with c6
      REPLA prec_uni7 with P7
      REPLA cantid7 with c7
      REPLA prec_uni8 with P8
      REPLA cantid8 with c8
      REPLA prec_uni9 with P9
      REPLA cantid9 with c9
      REPLA prec_uni10 with P10
      REPLA cantid10 with c10
      REPLA EXONERAR WITH EX
   ENDIF
   SELE A
   SKIP
   ?RECN()
ENDDO







PROCEDURE XX
SELE A
USE FACTURA
SELE B
USE D:\DISTRIBUIDORA\SIGEF31AGO\Sistema_ventas\FACTURAR\FACTURA
SET ORDE TO SERFAC
SELE A
GOTO 11
DO WHILE !EOF()
   SER=SERIE
   FAC=NUMERO
   SELE B
   SEEK SER+STR(FAC,8)
   IF FOUN()
      FVC=FECHA_VENC
      DIA=DIAS_CRED
      REG=REGISTRO
      SELE A
      REPLA FECHA_VENC WITH FVC
      REPLA DIAS_CRED WITH DIA
      REPLA REGISTRO WITH REG
   ENDIF
   SELE A
   SKIP
   ?RECN()
ENDDO
