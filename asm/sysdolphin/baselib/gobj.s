.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_80390CAC
func_80390CAC:
/* 80390CAC 0038D88C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80390CB0 0038D890  38 60 00 00 */	li r3, 0
/* 80390CB4 0038D894  48 00 00 14 */	b lbl_80390CC8
lbl_80390CB8:
/* 80390CB8 0038D898  88 04 00 0D */	lbz r0, 0xd(r4)
/* 80390CBC 0038D89C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80390CC0 0038D8A0  98 04 00 0D */	stb r0, 0xd(r4)
/* 80390CC4 0038D8A4  80 84 00 00 */	lwz r4, 0(r4)
lbl_80390CC8:
/* 80390CC8 0038D8A8  28 04 00 00 */	cmplwi r4, 0
/* 80390CCC 0038D8AC  40 82 FF EC */	bne lbl_80390CB8
/* 80390CD0 0038D8B0  4E 80 00 20 */	blr 

.global func_80390CD4
func_80390CD4:
/* 80390CD4 0038D8B4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80390CD8 0038D8B8  48 00 00 18 */	b lbl_80390CF0
lbl_80390CDC:
/* 80390CDC 0038D8BC  80 6D C1 9C */	lwz r3, lbl_804D783C@sda21(r13)
/* 80390CE0 0038D8C0  88 04 00 0D */	lbz r0, 0xd(r4)
/* 80390CE4 0038D8C4  50 60 26 B6 */	rlwimi r0, r3, 4, 0x1a, 0x1b
/* 80390CE8 0038D8C8  98 04 00 0D */	stb r0, 0xd(r4)
/* 80390CEC 0038D8CC  80 84 00 00 */	lwz r4, 0(r4)
lbl_80390CF0:
/* 80390CF0 0038D8D0  28 04 00 00 */	cmplwi r4, 0
/* 80390CF4 0038D8D4  40 82 FF E8 */	bne lbl_80390CDC
/* 80390CF8 0038D8D8  4E 80 00 20 */	blr 

.global func_80390CFC
func_80390CFC:
/* 80390CFC 0038D8DC  7C 08 02 A6 */	mflr r0
/* 80390D00 0038D8E0  3C 60 80 4D */	lis r3, lbl_804CE380@ha
/* 80390D04 0038D8E4  90 01 00 04 */	stw r0, 4(r1)
/* 80390D08 0038D8E8  38 63 E3 80 */	addi r3, r3, lbl_804CE380@l
/* 80390D0C 0038D8EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80390D10 0038D8F0  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 80390D14 0038D8F4  80 63 00 08 */	lwz r3, 8(r3)
/* 80390D18 0038D8F8  28 03 00 00 */	cmplwi r3, 0
/* 80390D1C 0038D8FC  41 82 00 10 */	beq lbl_80390D2C
/* 80390D20 0038D900  83 E3 00 00 */	lwz r31, 0(r3)
/* 80390D24 0038D904  83 C3 00 04 */	lwz r30, 4(r3)
/* 80390D28 0038D908  48 00 00 0C */	b lbl_80390D34
lbl_80390D2C:
/* 80390D2C 0038D90C  3B C0 00 00 */	li r30, 0
/* 80390D30 0038D910  3B FE 00 00 */	addi r31, r30, 0
lbl_80390D34:
/* 80390D34 0038D914  80 6D C1 9C */	lwz r3, lbl_804D783C@sda21(r13)
/* 80390D38 0038D918  38 03 00 01 */	addi r0, r3, 1
/* 80390D3C 0038D91C  90 0D C1 9C */	stw r0, lbl_804D783C@sda21(r13)
/* 80390D40 0038D920  80 0D C1 9C */	lwz r0, lbl_804D783C@sda21(r13)
/* 80390D44 0038D924  2C 00 00 02 */	cmpwi r0, 2
/* 80390D48 0038D928  40 81 00 0C */	ble lbl_80390D54
/* 80390D4C 0038D92C  38 00 00 00 */	li r0, 0
/* 80390D50 0038D930  90 0D C1 9C */	stw r0, lbl_804D783C@sda21(r13)
lbl_80390D54:
/* 80390D54 0038D934  3C 80 80 4D */	lis r4, lbl_804CE3E4@ha
/* 80390D58 0038D938  3C 60 80 4D */	lis r3, lbl_804CE380@ha
/* 80390D5C 0038D93C  3B 24 E3 E4 */	addi r25, r4, lbl_804CE3E4@l
/* 80390D60 0038D940  3B 43 E3 80 */	addi r26, r3, lbl_804CE380@l
/* 80390D64 0038D944  3B 80 00 00 */	li r28, 0
/* 80390D68 0038D948  3B A0 00 00 */	li r29, 0
/* 80390D6C 0038D94C  48 00 01 2C */	b lbl_80390E98
lbl_80390D70:
/* 80390D70 0038D950  93 8D C1 94 */	stw r28, lbl_804D7834@sda21(r13)
/* 80390D74 0038D954  80 6D C1 A0 */	lwz r3, lbl_804D7840@sda21(r13)
/* 80390D78 0038D958  7F 63 E8 2E */	lwzx r27, r3, r29
/* 80390D7C 0038D95C  48 00 01 0C */	b lbl_80390E88
lbl_80390D80:
/* 80390D80 0038D960  80 1B 00 04 */	lwz r0, 4(r27)
/* 80390D84 0038D964  80 8D C1 9C */	lwz r4, lbl_804D783C@sda21(r13)
/* 80390D88 0038D968  90 0D C1 90 */	stw r0, lbl_804D7830@sda21(r13)
/* 80390D8C 0038D96C  88 7B 00 0D */	lbz r3, 0xd(r27)
/* 80390D90 0038D970  54 60 E7 BE */	rlwinm r0, r3, 0x1c, 0x1e, 0x1f
/* 80390D94 0038D974  7C 00 20 00 */	cmpw r0, r4
/* 80390D98 0038D978  41 82 00 EC */	beq lbl_80390E84
/* 80390D9C 0038D97C  50 83 26 B6 */	rlwimi r3, r4, 4, 0x1a, 0x1b
/* 80390DA0 0038D980  98 7B 00 0D */	stb r3, 0xd(r27)
/* 80390DA4 0038D984  38 60 00 00 */	li r3, 0
/* 80390DA8 0038D988  38 80 00 01 */	li r4, 1
/* 80390DAC 0038D98C  83 1B 00 10 */	lwz r24, 0x10(r27)
/* 80390DB0 0038D990  88 B8 00 02 */	lbz r5, 2(r24)
/* 80390DB4 0038D994  4B F9 1F 7D */	bl __shl2i
/* 80390DB8 0038D998  7F C5 20 38 */	and r5, r30, r4
/* 80390DBC 0038D99C  38 00 00 00 */	li r0, 0
/* 80390DC0 0038D9A0  7F E4 18 38 */	and r4, r31, r3
/* 80390DC4 0038D9A4  7C A3 02 78 */	xor r3, r5, r0
/* 80390DC8 0038D9A8  7C 80 02 78 */	xor r0, r4, r0
/* 80390DCC 0038D9AC  7C 60 03 79 */	or. r0, r3, r0
/* 80390DD0 0038D9B0  40 82 00 B4 */	bne lbl_80390E84
/* 80390DD4 0038D9B4  88 7B 00 0D */	lbz r3, 0xd(r27)
/* 80390DD8 0038D9B8  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80390DDC 0038D9BC  40 82 00 A8 */	bne lbl_80390E84
/* 80390DE0 0038D9C0  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80390DE4 0038D9C4  40 82 00 A0 */	bne lbl_80390E84
/* 80390DE8 0038D9C8  93 0D C1 7C */	stw r24, lbl_804D781C@sda21(r13)
/* 80390DEC 0038D9CC  93 6D C1 98 */	stw r27, lbl_804D7838@sda21(r13)
/* 80390DF0 0038D9D0  81 9B 00 14 */	lwz r12, 0x14(r27)
/* 80390DF4 0038D9D4  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 80390DF8 0038D9D8  7D 88 03 A6 */	mtlr r12
/* 80390DFC 0038D9DC  4E 80 00 21 */	blrl 
/* 80390E00 0038D9E0  80 1B 00 04 */	lwz r0, 4(r27)
/* 80390E04 0038D9E4  90 0D C1 90 */	stw r0, lbl_804D7830@sda21(r13)
/* 80390E08 0038D9E8  80 19 00 00 */	lwz r0, 0(r25)
/* 80390E0C 0038D9EC  28 00 00 00 */	cmplwi r0, 0
/* 80390E10 0038D9F0  41 82 00 68 */	beq lbl_80390E78
/* 80390E14 0038D9F4  88 19 00 00 */	lbz r0, 0(r25)
/* 80390E18 0038D9F8  38 60 00 01 */	li r3, 1
/* 80390E1C 0038D9FC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80390E20 0038DA00  98 19 00 00 */	stb r0, 0(r25)
/* 80390E24 0038DA04  88 79 00 00 */	lbz r3, 0(r25)
/* 80390E28 0038DA08  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80390E2C 0038DA0C  41 82 00 10 */	beq lbl_80390E3C
/* 80390E30 0038DA10  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 80390E34 0038DA14  4B FF F3 F5 */	bl func_80390228
/* 80390E38 0038DA18  48 00 00 38 */	b lbl_80390E70
lbl_80390E3C:
/* 80390E3C 0038DA1C  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80390E40 0038DA20  41 82 00 1C */	beq lbl_80390E5C
/* 80390E44 0038DA24  80 79 00 04 */	lwz r3, 4(r25)
/* 80390E48 0038DA28  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 80390E4C 0038DA2C  88 B9 00 08 */	lbz r5, 8(r25)
/* 80390E50 0038DA30  88 D9 00 09 */	lbz r6, 9(r25)
/* 80390E54 0038DA34  80 F9 00 0C */	lwz r7, 0xc(r25)
/* 80390E58 0038DA38  4B FF F4 D5 */	bl func_8039032C
lbl_80390E5C:
/* 80390E5C 0038DA3C  88 19 00 00 */	lbz r0, 0(r25)
/* 80390E60 0038DA40  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80390E64 0038DA44  41 82 00 0C */	beq lbl_80390E70
/* 80390E68 0038DA48  7F 63 DB 78 */	mr r3, r27
/* 80390E6C 0038DA4C  4B FF EF B9 */	bl func_8038FE24
lbl_80390E70:
/* 80390E70 0038DA50  38 00 00 00 */	li r0, 0
/* 80390E74 0038DA54  90 19 00 00 */	stw r0, 0(r25)
lbl_80390E78:
/* 80390E78 0038DA58  38 00 00 00 */	li r0, 0
/* 80390E7C 0038DA5C  90 0D C1 7C */	stw r0, lbl_804D781C@sda21(r13)
/* 80390E80 0038DA60  90 0D C1 98 */	stw r0, lbl_804D7838@sda21(r13)
lbl_80390E84:
/* 80390E84 0038DA64  83 6D C1 90 */	lwz r27, lbl_804D7830@sda21(r13)
lbl_80390E88:
/* 80390E88 0038DA68  28 1B 00 00 */	cmplwi r27, 0
/* 80390E8C 0038DA6C  40 82 FE F4 */	bne lbl_80390D80
/* 80390E90 0038DA70  3B BD 00 04 */	addi r29, r29, 4
/* 80390E94 0038DA74  3B 9C 00 01 */	addi r28, r28, 1
lbl_80390E98:
/* 80390E98 0038DA78  88 1A 00 02 */	lbz r0, 2(r26)
/* 80390E9C 0038DA7C  7C 1C 00 00 */	cmpw r28, r0
/* 80390EA0 0038DA80  40 81 FE D0 */	ble lbl_80390D70
/* 80390EA4 0038DA84  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80390EA8 0038DA88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80390EAC 0038DA8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80390EB0 0038DA90  7C 08 03 A6 */	mtlr r0
/* 80390EB4 0038DA94  4E 80 00 20 */	blr 

.global func_80390EB8
func_80390EB8:
/* 80390EB8 0038DA98  3C 80 80 41 */	lis r4, lbl_804085F0@ha
/* 80390EBC 0038DA9C  54 63 10 3A */	slwi r3, r3, 2
/* 80390EC0 0038DAA0  38 04 85 F0 */	addi r0, r4, lbl_804085F0@l
/* 80390EC4 0038DAA4  7C 60 1A 14 */	add r3, r0, r3
/* 80390EC8 0038DAA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80390ECC 0038DAAC  4E 80 00 20 */	blr 

.global func_80390ED0
func_80390ED0:
/* 80390ED0 0038DAB0  7C 08 02 A6 */	mflr r0
/* 80390ED4 0038DAB4  90 01 00 04 */	stw r0, 4(r1)
/* 80390ED8 0038DAB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80390EDC 0038DABC  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 80390EE0 0038DAC0  3B 63 00 00 */	addi r27, r3, 0
/* 80390EE4 0038DAC4  3B 84 00 00 */	addi r28, r4, 0
/* 80390EE8 0038DAC8  3B C0 00 00 */	li r30, 0
/* 80390EEC 0038DACC  48 00 00 B8 */	b lbl_80390FA4
lbl_80390EF0:
/* 80390EF0 0038DAD0  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 80390EF4 0038DAD4  41 82 00 A8 */	beq lbl_80390F9C
/* 80390EF8 0038DAD8  83 3B 00 20 */	lwz r25, 0x20(r27)
/* 80390EFC 0038DADC  3B E0 00 00 */	li r31, 0
/* 80390F00 0038DAE0  83 BB 00 24 */	lwz r29, 0x24(r27)
/* 80390F04 0038DAE4  48 00 00 84 */	b lbl_80390F88
lbl_80390F08:
/* 80390F08 0038DAE8  38 00 00 01 */	li r0, 1
/* 80390F0C 0038DAEC  38 80 00 00 */	li r4, 0
/* 80390F10 0038DAF0  7F A3 00 38 */	and r3, r29, r0
/* 80390F14 0038DAF4  7F 20 20 38 */	and r0, r25, r4
/* 80390F18 0038DAF8  7C 63 22 78 */	xor r3, r3, r4
/* 80390F1C 0038DAFC  7C 00 22 78 */	xor r0, r0, r4
/* 80390F20 0038DB00  7C 60 03 79 */	or. r0, r3, r0
/* 80390F24 0038DB04  41 82 00 48 */	beq lbl_80390F6C
/* 80390F28 0038DB08  80 6D C1 84 */	lwz r3, lbl_804D7824@sda21(r13)
/* 80390F2C 0038DB0C  7F 03 F8 2E */	lwzx r24, r3, r31
/* 80390F30 0038DB10  48 00 00 34 */	b lbl_80390F64
lbl_80390F34:
/* 80390F34 0038DB14  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 80390F38 0038DB18  28 00 00 00 */	cmplwi r0, 0
/* 80390F3C 0038DB1C  41 82 00 24 */	beq lbl_80390F60
/* 80390F40 0038DB20  83 4D C1 74 */	lwz r26, lbl_804D7814@sda21(r13)
/* 80390F44 0038DB24  38 78 00 00 */	addi r3, r24, 0
/* 80390F48 0038DB28  38 9E 00 00 */	addi r4, r30, 0
/* 80390F4C 0038DB2C  93 0D C1 74 */	stw r24, lbl_804D7814@sda21(r13)
/* 80390F50 0038DB30  81 98 00 1C */	lwz r12, 0x1c(r24)
/* 80390F54 0038DB34  7D 88 03 A6 */	mtlr r12
/* 80390F58 0038DB38  4E 80 00 21 */	blrl 
/* 80390F5C 0038DB3C  93 4D C1 74 */	stw r26, lbl_804D7814@sda21(r13)
lbl_80390F60:
/* 80390F60 0038DB40  83 18 00 10 */	lwz r24, 0x10(r24)
lbl_80390F64:
/* 80390F64 0038DB44  28 18 00 00 */	cmplwi r24, 0
/* 80390F68 0038DB48  40 82 FF CC */	bne lbl_80390F34
lbl_80390F6C:
/* 80390F6C 0038DB4C  38 79 00 00 */	addi r3, r25, 0
/* 80390F70 0038DB50  38 9D 00 00 */	addi r4, r29, 0
/* 80390F74 0038DB54  38 A0 00 01 */	li r5, 1
/* 80390F78 0038DB58  3B FF 00 04 */	addi r31, r31, 4
/* 80390F7C 0038DB5C  4B F9 1D D9 */	bl __shr2u
/* 80390F80 0038DB60  3B A4 00 00 */	addi r29, r4, 0
/* 80390F84 0038DB64  3B 23 00 00 */	addi r25, r3, 0
lbl_80390F88:
/* 80390F88 0038DB68  38 00 00 00 */	li r0, 0
/* 80390F8C 0038DB6C  7F A3 02 78 */	xor r3, r29, r0
/* 80390F90 0038DB70  7F 20 02 78 */	xor r0, r25, r0
/* 80390F94 0038DB74  7C 60 03 79 */	or. r0, r3, r0
/* 80390F98 0038DB78  40 82 FF 70 */	bne lbl_80390F08
lbl_80390F9C:
/* 80390F9C 0038DB7C  57 9C F8 7E */	srwi r28, r28, 1
/* 80390FA0 0038DB80  3B DE 00 01 */	addi r30, r30, 1
lbl_80390FA4:
/* 80390FA4 0038DB84  28 1C 00 00 */	cmplwi r28, 0
/* 80390FA8 0038DB88  40 82 FF 48 */	bne lbl_80390EF0
/* 80390FAC 0038DB8C  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 80390FB0 0038DB90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80390FB4 0038DB94  38 21 00 30 */	addi r1, r1, 0x30
/* 80390FB8 0038DB98  7C 08 03 A6 */	mtlr r0
/* 80390FBC 0038DB9C  4E 80 00 20 */	blr 

.global func_80390FC0
func_80390FC0:
/* 80390FC0 0038DBA0  7C 08 02 A6 */	mflr r0
/* 80390FC4 0038DBA4  3C 60 80 4D */	lis r3, lbl_804CE380@ha
/* 80390FC8 0038DBA8  90 01 00 04 */	stw r0, 4(r1)
/* 80390FCC 0038DBAC  38 63 E3 80 */	addi r3, r3, lbl_804CE380@l
/* 80390FD0 0038DBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80390FD4 0038DBB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80390FD8 0038DBB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80390FDC 0038DBBC  88 03 00 01 */	lbz r0, 1(r3)
/* 80390FE0 0038DBC0  80 8D C1 84 */	lwz r4, lbl_804D7824@sda21(r13)
/* 80390FE4 0038DBC4  54 00 10 3A */	slwi r0, r0, 2
/* 80390FE8 0038DBC8  7C 64 02 14 */	add r3, r4, r0
/* 80390FEC 0038DBCC  83 C3 00 04 */	lwz r30, 4(r3)
/* 80390FF0 0038DBD0  48 00 00 34 */	b lbl_80391024
lbl_80390FF4:
/* 80390FF4 0038DBD4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80390FF8 0038DBD8  28 00 00 00 */	cmplwi r0, 0
/* 80390FFC 0038DBDC  41 82 00 24 */	beq lbl_80391020
/* 80391000 0038DBE0  83 ED C1 78 */	lwz r31, lbl_804D7818@sda21(r13)
/* 80391004 0038DBE4  38 7E 00 00 */	addi r3, r30, 0
/* 80391008 0038DBE8  38 80 00 00 */	li r4, 0
/* 8039100C 0038DBEC  93 CD C1 78 */	stw r30, lbl_804D7818@sda21(r13)
/* 80391010 0038DBF0  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 80391014 0038DBF4  7D 88 03 A6 */	mtlr r12
/* 80391018 0038DBF8  4E 80 00 21 */	blrl 
/* 8039101C 0038DBFC  93 ED C1 78 */	stw r31, lbl_804D7818@sda21(r13)
lbl_80391020:
/* 80391020 0038DC00  83 DE 00 10 */	lwz r30, 0x10(r30)
lbl_80391024:
/* 80391024 0038DC04  28 1E 00 00 */	cmplwi r30, 0
/* 80391028 0038DC08  40 82 FF CC */	bne lbl_80390FF4
/* 8039102C 0038DC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80391030 0038DC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80391034 0038DC14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80391038 0038DC18  38 21 00 10 */	addi r1, r1, 0x10
/* 8039103C 0038DC1C  7C 08 03 A6 */	mtlr r0
/* 80391040 0038DC20  4E 80 00 20 */	blr 

.global lbl_80391044
lbl_80391044:
/* 80391044 0038DC24  7C 08 02 A6 */	mflr r0
/* 80391048 0038DC28  90 01 00 04 */	stw r0, 4(r1)
/* 8039104C 0038DC2C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80391050 0038DC30  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80391054 0038DC34  4B FD 58 99 */	bl func_803668EC
/* 80391058 0038DC38  4B FD 92 31 */	bl func_8036A288
/* 8039105C 0038DC3C  4B FD 4E CD */	bl func_80365F28
/* 80391060 0038DC40  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80391064 0038DC44  38 21 00 08 */	addi r1, r1, 8
/* 80391068 0038DC48  7C 08 03 A6 */	mtlr r0
/* 8039106C 0038DC4C  4E 80 00 20 */	blr 

.global func_80391070
func_80391070:
/* 80391070 0038DC50  7C 08 02 A6 */	mflr r0
/* 80391074 0038DC54  90 01 00 04 */	stw r0, 4(r1)
/* 80391078 0038DC58  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8039107C 0038DC5C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80391080 0038DC60  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 80391084 0038DC64  7C 83 23 78 */	mr r3, r4
/* 80391088 0038DC68  4B FF FE 31 */	bl func_80390EB8
/* 8039108C 0038DC6C  38 A3 00 00 */	addi r5, r3, 0
/* 80391090 0038DC70  38 7F 00 00 */	addi r3, r31, 0
/* 80391094 0038DC74  38 80 00 00 */	li r4, 0
/* 80391098 0038DC78  38 C0 00 00 */	li r6, 0
/* 8039109C 0038DC7C  4B FD F9 41 */	bl func_803709DC
/* 803910A0 0038DC80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803910A4 0038DC84  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803910A8 0038DC88  38 21 00 18 */	addi r1, r1, 0x18
/* 803910AC 0038DC8C  7C 08 03 A6 */	mtlr r0
/* 803910B0 0038DC90  4E 80 00 20 */	blr 

.global lbl_803910B4
lbl_803910B4:
/* 803910B4 0038DC94  7C 08 02 A6 */	mflr r0
/* 803910B8 0038DC98  90 01 00 04 */	stw r0, 4(r1)
/* 803910BC 0038DC9C  94 21 FF F8 */	stwu r1, -8(r1)
/* 803910C0 0038DCA0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 803910C4 0038DCA4  4B FE C8 AD */	bl HSD_FogSet
/* 803910C8 0038DCA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803910CC 0038DCAC  38 21 00 08 */	addi r1, r1, 8
/* 803910D0 0038DCB0  7C 08 03 A6 */	mtlr r0
/* 803910D4 0038DCB4  4E 80 00 20 */	blr 

.global func_803910D8
func_803910D8:
/* 803910D8 0038DCB8  7C 08 02 A6 */	mflr r0
/* 803910DC 0038DCBC  90 01 00 04 */	stw r0, 4(r1)
/* 803910E0 0038DCC0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803910E4 0038DCC4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803910E8 0038DCC8  7C 7F 1B 78 */	mr r31, r3
/* 803910EC 0038DCCC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 803910F0 0038DCD0  4B FD 73 69 */	bl func_80368458
/* 803910F4 0038DCD4  2C 03 00 00 */	cmpwi r3, 0
/* 803910F8 0038DCD8  41 82 00 14 */	beq lbl_8039110C
/* 803910FC 0038DCDC  38 7F 00 00 */	addi r3, r31, 0
/* 80391100 0038DCE0  38 80 00 07 */	li r4, 7
/* 80391104 0038DCE4  4B FF FD CD */	bl func_80390ED0
/* 80391108 0038DCE8  4B FD 75 01 */	bl func_80368608
lbl_8039110C:
/* 8039110C 0038DCEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80391110 0038DCF0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80391114 0038DCF4  38 21 00 18 */	addi r1, r1, 0x18
/* 80391118 0038DCF8  7C 08 03 A6 */	mtlr r0
/* 8039111C 0038DCFC  4E 80 00 20 */	blr 
/* 80391120 0038DD00  7C 08 02 A6 */	mflr r0
/* 80391124 0038DD04  90 01 00 04 */	stw r0, 4(r1)
/* 80391128 0038DD08  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8039112C 0038DD0C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80391130 0038DD10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80391134 0038DD14  41 82 00 78 */	beq lbl_803911AC
/* 80391138 0038DD18  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 8039113C 0038DD1C  A0 9F 00 04 */	lhz r4, 4(r31)
/* 80391140 0038DD20  38 03 FF FF */	addi r0, r3, 0x0000FFFF@l
/* 80391144 0038DD24  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80391148 0038DD28  7C 04 00 50 */	subf r0, r4, r0
/* 8039114C 0038DD2C  7C 00 00 34 */	cntlzw r0, r0
/* 80391150 0038DD30  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 80391154 0038DD34  38 BF 00 04 */	addi r5, r31, 4
/* 80391158 0038DD38  41 82 00 08 */	beq lbl_80391160
/* 8039115C 0038DD3C  48 00 00 18 */	b lbl_80391174
lbl_80391160:
/* 80391160 0038DD40  38 64 FF FF */	addi r3, r4, -1
/* 80391164 0038DD44  7C 04 00 D0 */	neg r0, r4
/* 80391168 0038DD48  B0 65 00 00 */	sth r3, 0(r5)
/* 8039116C 0038DD4C  7C 00 00 34 */	cntlzw r0, r0
/* 80391170 0038DD50  54 00 D9 7E */	srwi r0, r0, 5
lbl_80391174:
/* 80391174 0038DD54  2C 00 00 00 */	cmpwi r0, 0
/* 80391178 0038DD58  41 82 00 34 */	beq lbl_803911AC
/* 8039117C 0038DD5C  28 1F 00 00 */	cmplwi r31, 0
/* 80391180 0038DD60  41 82 00 2C */	beq lbl_803911AC
/* 80391184 0038DD64  80 9F 00 00 */	lwz r4, 0(r31)
/* 80391188 0038DD68  7F E3 FB 78 */	mr r3, r31
/* 8039118C 0038DD6C  81 84 00 30 */	lwz r12, 0x30(r4)
/* 80391190 0038DD70  7D 88 03 A6 */	mtlr r12
/* 80391194 0038DD74  4E 80 00 21 */	blrl 
/* 80391198 0038DD78  80 9F 00 00 */	lwz r4, 0(r31)
/* 8039119C 0038DD7C  7F E3 FB 78 */	mr r3, r31
/* 803911A0 0038DD80  81 84 00 34 */	lwz r12, 0x34(r4)
/* 803911A4 0038DD84  7D 88 03 A6 */	mtlr r12
/* 803911A8 0038DD88  4E 80 00 21 */	blrl 
lbl_803911AC:
/* 803911AC 0038DD8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803911B0 0038DD90  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803911B4 0038DD94  38 21 00 18 */	addi r1, r1, 0x18
/* 803911B8 0038DD98  7C 08 03 A6 */	mtlr r0
/* 803911BC 0038DD9C  4E 80 00 20 */	blr 
/* 803911C0 0038DDA0  7C 08 02 A6 */	mflr r0
/* 803911C4 0038DDA4  90 01 00 04 */	stw r0, 4(r1)
/* 803911C8 0038DDA8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803911CC 0038DDAC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803911D0 0038DDB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803911D4 0038DDB4  41 82 00 78 */	beq lbl_8039124C
/* 803911D8 0038DDB8  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 803911DC 0038DDBC  A0 9F 00 04 */	lhz r4, 4(r31)
/* 803911E0 0038DDC0  38 03 FF FF */	addi r0, r3, 0x0000FFFF@l
/* 803911E4 0038DDC4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803911E8 0038DDC8  7C 04 00 50 */	subf r0, r4, r0
/* 803911EC 0038DDCC  7C 00 00 34 */	cntlzw r0, r0
/* 803911F0 0038DDD0  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 803911F4 0038DDD4  38 BF 00 04 */	addi r5, r31, 4
/* 803911F8 0038DDD8  41 82 00 08 */	beq lbl_80391200
/* 803911FC 0038DDDC  48 00 00 18 */	b lbl_80391214
lbl_80391200:
/* 80391200 0038DDE0  38 64 FF FF */	addi r3, r4, -1
/* 80391204 0038DDE4  7C 04 00 D0 */	neg r0, r4
/* 80391208 0038DDE8  B0 65 00 00 */	sth r3, 0(r5)
/* 8039120C 0038DDEC  7C 00 00 34 */	cntlzw r0, r0
/* 80391210 0038DDF0  54 00 D9 7E */	srwi r0, r0, 5
lbl_80391214:
/* 80391214 0038DDF4  2C 00 00 00 */	cmpwi r0, 0
/* 80391218 0038DDF8  41 82 00 34 */	beq lbl_8039124C
/* 8039121C 0038DDFC  28 1F 00 00 */	cmplwi r31, 0
/* 80391220 0038DE00  41 82 00 2C */	beq lbl_8039124C
/* 80391224 0038DE04  80 9F 00 00 */	lwz r4, 0(r31)
/* 80391228 0038DE08  7F E3 FB 78 */	mr r3, r31
/* 8039122C 0038DE0C  81 84 00 30 */	lwz r12, 0x30(r4)
/* 80391230 0038DE10  7D 88 03 A6 */	mtlr r12
/* 80391234 0038DE14  4E 80 00 21 */	blrl 
/* 80391238 0038DE18  80 9F 00 00 */	lwz r4, 0(r31)
/* 8039123C 0038DE1C  7F E3 FB 78 */	mr r3, r31
/* 80391240 0038DE20  81 84 00 34 */	lwz r12, 0x34(r4)
/* 80391244 0038DE24  7D 88 03 A6 */	mtlr r12
/* 80391248 0038DE28  4E 80 00 21 */	blrl 
lbl_8039124C:
/* 8039124C 0038DE2C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80391250 0038DE30  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80391254 0038DE34  38 21 00 18 */	addi r1, r1, 0x18
/* 80391258 0038DE38  7C 08 03 A6 */	mtlr r0
/* 8039125C 0038DE3C  4E 80 00 20 */	blr 

.global func_80391260
func_80391260:
/* 80391260 0038DE40  7C 08 02 A6 */	mflr r0
/* 80391264 0038DE44  3C 80 80 41 */	lis r4, lbl_80408610@ha
/* 80391268 0038DE48  90 01 00 04 */	stw r0, 4(r1)
/* 8039126C 0038DE4C  38 84 86 10 */	addi r4, r4, lbl_80408610@l
/* 80391270 0038DE50  94 21 FF F8 */	stwu r1, -8(r1)
/* 80391274 0038DE54  48 00 00 35 */	bl func_803912A8
/* 80391278 0038DE58  98 6D C1 AB */	stb r3, lbl_804D784B@sda21(r13)
/* 8039127C 0038DE5C  38 63 00 01 */	addi r3, r3, 1
/* 80391280 0038DE60  98 6D C1 AA */	stb r3, lbl_804D784A@sda21(r13)
/* 80391284 0038DE64  38 63 00 01 */	addi r3, r3, 1
/* 80391288 0038DE68  38 03 00 00 */	addi r0, r3, 0
/* 8039128C 0038DE6C  38 63 00 01 */	addi r3, r3, 1
/* 80391290 0038DE70  98 0D C1 A9 */	stb r0, lbl_804D7849@sda21(r13)
/* 80391294 0038DE74  98 6D C1 A8 */	stb r3, lbl_804D7848@sda21(r13)
/* 80391298 0038DE78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8039129C 0038DE7C  38 21 00 08 */	addi r1, r1, 8
/* 803912A0 0038DE80  7C 08 03 A6 */	mtlr r0
/* 803912A4 0038DE84  4E 80 00 20 */	blr 

.global func_803912A8
func_803912A8:
/* 803912A8 0038DE88  38 C3 00 04 */	addi r6, r3, 4
/* 803912AC 0038DE8C  38 60 00 00 */	li r3, 0
/* 803912B0 0038DE90  48 00 00 10 */	b lbl_803912C0
lbl_803912B4:
/* 803912B4 0038DE94  88 05 00 04 */	lbz r0, 4(r5)
/* 803912B8 0038DE98  38 C5 00 00 */	addi r6, r5, 0
/* 803912BC 0038DE9C  7C 63 02 14 */	add r3, r3, r0
lbl_803912C0:
/* 803912C0 0038DEA0  80 A6 00 00 */	lwz r5, 0(r6)
/* 803912C4 0038DEA4  28 05 00 00 */	cmplwi r5, 0
/* 803912C8 0038DEA8  40 82 FF EC */	bne lbl_803912B4
/* 803912CC 0038DEAC  90 86 00 00 */	stw r4, 0(r6)
/* 803912D0 0038DEB0  38 00 00 00 */	li r0, 0
/* 803912D4 0038DEB4  80 86 00 00 */	lwz r4, 0(r6)
/* 803912D8 0038DEB8  90 04 00 00 */	stw r0, 0(r4)
/* 803912DC 0038DEBC  4E 80 00 20 */	blr 

.global func_803912E0
func_803912E0:
/* 803912E0 0038DEC0  3C 80 80 41 */	lis r4, lbl_80408620@ha
/* 803912E4 0038DEC4  38 A4 86 20 */	addi r5, r4, lbl_80408620@l
/* 803912E8 0038DEC8  80 85 00 00 */	lwz r4, 0(r5)
/* 803912EC 0038DECC  80 05 00 04 */	lwz r0, 4(r5)
/* 803912F0 0038DED0  90 83 00 00 */	stw r4, 0(r3)
/* 803912F4 0038DED4  90 03 00 04 */	stw r0, 4(r3)
/* 803912F8 0038DED8  80 05 00 08 */	lwz r0, 8(r5)
/* 803912FC 0038DEDC  90 03 00 08 */	stw r0, 8(r3)
/* 80391300 0038DEE0  4E 80 00 20 */	blr 

.global func_80391304
func_80391304:
/* 80391304 0038DEE4  7C 08 02 A6 */	mflr r0
/* 80391308 0038DEE8  90 01 00 04 */	stw r0, 4(r1)
/* 8039130C 0038DEEC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80391310 0038DEF0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80391314 0038DEF4  7C 7F 1B 78 */	mr r31, r3
/* 80391318 0038DEF8  4B FF FF 49 */	bl func_80391260
/* 8039131C 0038DEFC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80391320 0038DF00  3C 80 80 4D */	lis r4, lbl_804CE380@ha
/* 80391324 0038DF04  80 1F 00 04 */	lwz r0, 4(r31)
/* 80391328 0038DF08  94 64 E3 80 */	stwu r3, lbl_804CE380@l(r4)
/* 8039132C 0038DF0C  90 04 00 04 */	stw r0, 4(r4)
/* 80391330 0038DF10  80 1F 00 08 */	lwz r0, 8(r31)
/* 80391334 0038DF14  90 04 00 08 */	stw r0, 8(r4)
/* 80391338 0038DF18  88 7F 00 00 */	lbz r3, 0(r31)
/* 8039133C 0038DF1C  38 03 00 01 */	addi r0, r3, 1
/* 80391340 0038DF20  54 03 10 3A */	slwi r3, r0, 2
/* 80391344 0038DF24  4B FE DE A1 */	bl func_8037F1E4
/* 80391348 0038DF28  90 6D C1 8C */	stw r3, lbl_804D782C@sda21(r13)
/* 8039134C 0038DF2C  88 7F 00 00 */	lbz r3, 0(r31)
/* 80391350 0038DF30  38 03 00 01 */	addi r0, r3, 1
/* 80391354 0038DF34  54 03 10 3A */	slwi r3, r0, 2
/* 80391358 0038DF38  4B FE DE 8D */	bl func_8037F1E4
/* 8039135C 0038DF3C  38 A0 00 00 */	li r5, 0
/* 80391360 0038DF40  90 6D C1 88 */	stw r3, lbl_804D7828@sda21(r13)
/* 80391364 0038DF44  38 85 00 00 */	addi r4, r5, 0
/* 80391368 0038DF48  38 C0 00 00 */	li r6, 0
/* 8039136C 0038DF4C  48 00 00 1C */	b lbl_80391388
lbl_80391370:
/* 80391370 0038DF50  80 6D C1 88 */	lwz r3, lbl_804D7828@sda21(r13)
/* 80391374 0038DF54  38 C6 00 01 */	addi r6, r6, 1
/* 80391378 0038DF58  7C 83 29 2E */	stwx r4, r3, r5
/* 8039137C 0038DF5C  80 6D C1 8C */	lwz r3, lbl_804D782C@sda21(r13)
/* 80391380 0038DF60  7C 83 29 2E */	stwx r4, r3, r5
/* 80391384 0038DF64  38 A5 00 04 */	addi r5, r5, 4
lbl_80391388:
/* 80391388 0038DF68  88 7F 00 00 */	lbz r3, 0(r31)
/* 8039138C 0038DF6C  38 03 00 01 */	addi r0, r3, 1
/* 80391390 0038DF70  7C 06 00 00 */	cmpw r6, r0
/* 80391394 0038DF74  41 80 FF DC */	blt lbl_80391370
/* 80391398 0038DF78  88 7F 00 01 */	lbz r3, 1(r31)
/* 8039139C 0038DF7C  38 03 00 02 */	addi r0, r3, 2
/* 803913A0 0038DF80  54 03 10 3A */	slwi r3, r0, 2
/* 803913A4 0038DF84  4B FE DE 41 */	bl func_8037F1E4
/* 803913A8 0038DF88  90 6D C1 84 */	stw r3, lbl_804D7824@sda21(r13)
/* 803913AC 0038DF8C  88 7F 00 01 */	lbz r3, 1(r31)
/* 803913B0 0038DF90  38 03 00 02 */	addi r0, r3, 2
/* 803913B4 0038DF94  54 03 10 3A */	slwi r3, r0, 2
/* 803913B8 0038DF98  4B FE DE 2D */	bl func_8037F1E4
/* 803913BC 0038DF9C  38 C0 00 00 */	li r6, 0
/* 803913C0 0038DFA0  90 6D C1 80 */	stw r3, lbl_804D7820@sda21(r13)
/* 803913C4 0038DFA4  38 A6 00 00 */	addi r5, r6, 0
/* 803913C8 0038DFA8  38 86 00 00 */	addi r4, r6, 0
/* 803913CC 0038DFAC  48 00 00 1C */	b lbl_803913E8
lbl_803913D0:
/* 803913D0 0038DFB0  80 6D C1 80 */	lwz r3, lbl_804D7820@sda21(r13)
/* 803913D4 0038DFB4  38 C6 00 01 */	addi r6, r6, 1
/* 803913D8 0038DFB8  7C 83 29 2E */	stwx r4, r3, r5
/* 803913DC 0038DFBC  80 6D C1 84 */	lwz r3, lbl_804D7824@sda21(r13)
/* 803913E0 0038DFC0  7C 83 29 2E */	stwx r4, r3, r5
/* 803913E4 0038DFC4  38 A5 00 04 */	addi r5, r5, 4
lbl_803913E8:
/* 803913E8 0038DFC8  88 7F 00 01 */	lbz r3, 1(r31)
/* 803913EC 0038DFCC  38 03 00 02 */	addi r0, r3, 2
/* 803913F0 0038DFD0  7C 06 00 00 */	cmpw r6, r0
/* 803913F4 0038DFD4  41 80 FF DC */	blt lbl_803913D0
/* 803913F8 0038DFD8  88 7F 00 02 */	lbz r3, 2(r31)
/* 803913FC 0038DFDC  38 03 00 01 */	addi r0, r3, 1
/* 80391400 0038DFE0  54 03 10 3A */	slwi r3, r0, 2
/* 80391404 0038DFE4  4B FE DD E1 */	bl func_8037F1E4
/* 80391408 0038DFE8  38 C0 00 00 */	li r6, 0
/* 8039140C 0038DFEC  90 6D C1 A0 */	stw r3, lbl_804D7840@sda21(r13)
/* 80391410 0038DFF0  38 86 00 00 */	addi r4, r6, 0
/* 80391414 0038DFF4  38 06 00 00 */	addi r0, r6, 0
/* 80391418 0038DFF8  48 00 00 14 */	b lbl_8039142C
lbl_8039141C:
/* 8039141C 0038DFFC  80 6D C1 A0 */	lwz r3, lbl_804D7840@sda21(r13)
/* 80391420 0038E000  38 C6 00 01 */	addi r6, r6, 1
/* 80391424 0038E004  7C 03 21 2E */	stwx r0, r3, r4
/* 80391428 0038E008  38 84 00 04 */	addi r4, r4, 4
lbl_8039142C:
/* 8039142C 0038E00C  88 7F 00 02 */	lbz r3, 2(r31)
/* 80391430 0038E010  38 A3 00 01 */	addi r5, r3, 1
/* 80391434 0038E014  7C 06 28 00 */	cmpw r6, r5
/* 80391438 0038E018  41 80 FF E4 */	blt lbl_8039141C
/* 8039143C 0038E01C  88 7F 00 00 */	lbz r3, 0(r31)
/* 80391440 0038E020  54 A0 10 3A */	slwi r0, r5, 2
/* 80391444 0038E024  38 63 00 01 */	addi r3, r3, 1
/* 80391448 0038E028  7C 63 01 D6 */	mullw r3, r3, r0
/* 8039144C 0038E02C  4B FE DD 99 */	bl func_8037F1E4
/* 80391450 0038E030  38 E0 00 00 */	li r7, 0
/* 80391454 0038E034  90 6D C1 A4 */	stw r3, lbl_804D7844@sda21(r13)
/* 80391458 0038E038  38 C7 00 00 */	addi r6, r7, 0
/* 8039145C 0038E03C  38 A7 00 00 */	addi r5, r7, 0
/* 80391460 0038E040  48 00 00 14 */	b lbl_80391474
lbl_80391464:
/* 80391464 0038E044  80 6D C1 A4 */	lwz r3, lbl_804D7844@sda21(r13)
/* 80391468 0038E048  38 E7 00 01 */	addi r7, r7, 1
/* 8039146C 0038E04C  7C A3 31 2E */	stwx r5, r3, r6
/* 80391470 0038E050  38 C6 00 04 */	addi r6, r6, 4
lbl_80391474:
/* 80391474 0038E054  88 9F 00 02 */	lbz r4, 2(r31)
/* 80391478 0038E058  88 7F 00 00 */	lbz r3, 0(r31)
/* 8039147C 0038E05C  38 84 00 01 */	addi r4, r4, 1
/* 80391480 0038E060  38 03 00 01 */	addi r0, r3, 1
/* 80391484 0038E064  7C 04 01 D6 */	mullw r0, r4, r0
/* 80391488 0038E068  7C 07 00 00 */	cmpw r7, r0
/* 8039148C 0038E06C  41 80 FF D8 */	blt lbl_80391464
/* 80391490 0038E070  3C 60 80 4D */	lis r3, lbl_804CE38C@ha
/* 80391494 0038E074  38 63 E3 8C */	addi r3, r3, lbl_804CE38C@l
/* 80391498 0038E078  38 80 00 38 */	li r4, 0x38
/* 8039149C 0038E07C  38 A0 00 04 */	li r5, 4
/* 803914A0 0038E080  4B FE 98 A9 */	bl HSD_ObjAllocInit
/* 803914A4 0038E084  3C 60 80 4D */	lis r3, lbl_804CE3B8@ha
/* 803914A8 0038E088  38 63 E3 B8 */	addi r3, r3, lbl_804CE3B8@l
/* 803914AC 0038E08C  38 80 00 18 */	li r4, 0x18
/* 803914B0 0038E090  38 A0 00 04 */	li r5, 4
/* 803914B4 0038E094  4B FE 98 95 */	bl HSD_ObjAllocInit
/* 803914B8 0038E098  80 9F 00 04 */	lwz r4, 4(r31)
/* 803914BC 0038E09C  38 60 00 00 */	li r3, 0
/* 803914C0 0038E0A0  48 00 00 10 */	b lbl_803914D0
lbl_803914C4:
/* 803914C4 0038E0A4  88 04 00 04 */	lbz r0, 4(r4)
/* 803914C8 0038E0A8  80 84 00 00 */	lwz r4, 0(r4)
/* 803914CC 0038E0AC  7C 63 02 14 */	add r3, r3, r0
lbl_803914D0:
/* 803914D0 0038E0B0  28 04 00 00 */	cmplwi r4, 0
/* 803914D4 0038E0B4  40 82 FF F0 */	bne lbl_803914C4
/* 803914D8 0038E0B8  2C 03 00 00 */	cmpwi r3, 0
/* 803914DC 0038E0BC  41 82 00 68 */	beq lbl_80391544
/* 803914E0 0038E0C0  54 63 10 3A */	slwi r3, r3, 2
/* 803914E4 0038E0C4  4B FE DD 01 */	bl func_8037F1E4
/* 803914E8 0038E0C8  90 6D C1 70 */	stw r3, lbl_804D7810@sda21(r13)
/* 803914EC 0038E0CC  39 00 00 00 */	li r8, 0
/* 803914F0 0038E0D0  81 3F 00 04 */	lwz r9, 4(r31)
/* 803914F4 0038E0D4  48 00 00 44 */	b lbl_80391538
lbl_803914F8:
/* 803914F8 0038E0D8  38 E0 00 00 */	li r7, 0
/* 803914FC 0038E0DC  38 A7 00 00 */	addi r5, r7, 0
/* 80391500 0038E0E0  38 C8 00 00 */	addi r6, r8, 0
/* 80391504 0038E0E4  48 00 00 24 */	b lbl_80391528
lbl_80391508:
/* 80391508 0038E0E8  80 89 00 08 */	lwz r4, 8(r9)
/* 8039150C 0038E0EC  38 E7 00 01 */	addi r7, r7, 1
/* 80391510 0038E0F0  80 6D C1 70 */	lwz r3, lbl_804D7810@sda21(r13)
/* 80391514 0038E0F4  39 08 00 04 */	addi r8, r8, 4
/* 80391518 0038E0F8  7C 04 28 2E */	lwzx r0, r4, r5
/* 8039151C 0038E0FC  38 A5 00 04 */	addi r5, r5, 4
/* 80391520 0038E100  7C 03 31 2E */	stwx r0, r3, r6
/* 80391524 0038E104  38 C6 00 04 */	addi r6, r6, 4
lbl_80391528:
/* 80391528 0038E108  88 09 00 04 */	lbz r0, 4(r9)
/* 8039152C 0038E10C  7C 07 00 00 */	cmpw r7, r0
/* 80391530 0038E110  41 80 FF D8 */	blt lbl_80391508
/* 80391534 0038E114  81 29 00 00 */	lwz r9, 0(r9)
lbl_80391538:
/* 80391538 0038E118  28 09 00 00 */	cmplwi r9, 0
/* 8039153C 0038E11C  40 82 FF BC */	bne lbl_803914F8
/* 80391540 0038E120  48 00 00 0C */	b lbl_8039154C
lbl_80391544:
/* 80391544 0038E124  38 00 00 00 */	li r0, 0
/* 80391548 0038E128  90 0D C1 70 */	stw r0, lbl_804D7810@sda21(r13)
lbl_8039154C:
/* 8039154C 0038E12C  38 00 00 00 */	li r0, 0
/* 80391550 0038E130  90 0D C1 9C */	stw r0, lbl_804D783C@sda21(r13)
/* 80391554 0038E134  3C 60 80 4D */	lis r3, lbl_804CE3E4@ha
/* 80391558 0038E138  90 0D C1 7C */	stw r0, lbl_804D781C@sda21(r13)
/* 8039155C 0038E13C  90 0D C1 98 */	stw r0, lbl_804D7838@sda21(r13)
/* 80391560 0038E140  90 03 E3 E4 */	stw r0, lbl_804CE3E4@l(r3)
/* 80391564 0038E144  90 0D C1 78 */	stw r0, lbl_804D7818@sda21(r13)
/* 80391568 0038E148  90 0D C1 74 */	stw r0, lbl_804D7814@sda21(r13)
/* 8039156C 0038E14C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80391570 0038E150  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80391574 0038E154  38 21 00 18 */	addi r1, r1, 0x18
/* 80391578 0038E158  7C 08 03 A6 */	mtlr r0
/* 8039157C 0038E15C  4E 80 00 20 */	blr 