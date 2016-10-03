	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_libpng_libpng
	extrn	___bb_random_random
	extrn	___bb_timer_timer
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbMilliSecs
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_DebugStop
	extrn	_brl_graphics_EndGraphics
	extrn	_brl_graphics_Flip
	extrn	_brl_graphics_Graphics
	extrn	_brl_max2d_AutoImageFlags
	extrn	_brl_max2d_AutoMidHandle
	extrn	_brl_max2d_Cls
	extrn	_brl_max2d_DrawImage
	extrn	_brl_max2d_DrawText
	extrn	_brl_max2d_ImagesCollide
	extrn	_brl_max2d_LoadImage
	extrn	_brl_max2d_SetAlpha
	extrn	_brl_max2d_SetBlend
	extrn	_brl_polledinput_KeyDown
	extrn	_brl_random_Rand
	extrn	_brl_random_SeedRnd
	public	__bb_TActor_Actor
	public	__bb_TActor_Create
	public	__bb_TActor_New
	public	__bb_main
	public	__bb_z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0_New
	public	__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_Application
	public	__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_New
	public	__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_Resources
	public	__bb_z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f_New
	public	_bb_AI
	public	_bb_AIMovement
	public	_bb_Ball
	public	_bb_BallPhysics
	public	_bb_Player
	public	_bb_TActor
	public	_bb_UserInput
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_108],0
	je	_109
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_109:
	mov	dword [_108],1
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	call	___bb_bmploader_bmploader
	call	___bb_timer_timer
	call	___bb_libpng_libpng
	call	___bb_random_random
	push	_2
	call	_bbObjectRegisterType
	add	esp,4
	push	_3
	call	_bbObjectRegisterType
	add	esp,4
	push	_9
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TActor
	call	_bbObjectRegisterType
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	1
	call	_brl_max2d_AutoMidHandle
	add	esp,4
	push	1
	call	_brl_max2d_AutoImageFlags
	add	esp,4
	mov	eax,dword [_101]
	and	eax,1
	cmp	eax,0
	jne	_102
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	mov	eax,dword [eax]
	call	dword [eax+52]
	mov	dword [_bb_Player],eax
	or	dword [_101],1
_102:
	mov	ebx,dword [_bb_Player]
	push	-1
	push	_10
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebx+8],eax
	mov	eax,dword [_bb_Player]
	mov	dword [eax+28],10
	mov	eax,dword [_bb_Player]
	mov	dword [eax+32],250
	mov	eax,dword [_bb_Player]
	mov	dword [eax+20],1
	mov	eax,dword [_bb_Player]
	mov	dword [eax+24],1
	mov	eax,dword [_bb_Player]
	mov	dword [eax+44],0
	mov	eax,dword [_101]
	and	eax,2
	cmp	eax,0
	jne	_103
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	mov	eax,dword [eax]
	call	dword [eax+52]
	mov	dword [_bb_AI],eax
	or	dword [_101],2
_103:
	mov	ebx,dword [_bb_AI]
	push	-1
	push	_11
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebx+8],eax
	mov	eax,dword [_bb_AI]
	mov	dword [eax+28],770
	mov	eax,dword [_bb_AI]
	mov	dword [eax+32],250
	mov	eax,dword [_bb_AI]
	mov	dword [eax+20],1
	mov	eax,dword [_bb_AI]
	mov	dword [eax+24],1
	mov	eax,dword [_bb_AI]
	mov	dword [eax+44],0
	mov	eax,dword [_101]
	and	eax,4
	cmp	eax,0
	jne	_104
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	mov	eax,dword [eax]
	call	dword [eax+52]
	mov	dword [_bb_Ball],eax
	or	dword [_101],4
_104:
	mov	ebx,dword [_bb_Ball]
	push	-1
	push	_12
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebx+8],eax
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+28],400
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+32],300
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+20],1
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+24],1
	mov	ebx,dword [_bb_Ball]
	push	6
	push	3
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+48],eax
	mov	ebx,dword [_bb_Ball]
	push	8
	push	-8
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+52],eax
_15:
	call	_brl_max2d_Cls
	push	0
	push	0
	mov	eax,dword [_bb_Player]
	push	dword [eax+44]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_16
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	1101004800
	push	0
	mov	eax,dword [_bb_AI]
	push	dword [eax+44]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_17
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	call	_bb_BallPhysics
	mov	eax,dword [_bb_Player]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	eax,dword [_bb_AI]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	eax,dword [_bb_Ball]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	call	_bb_UserInput
	call	_bb_AIMovement
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
_13:
	push	27
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_15
_14:
	call	_brl_graphics_EndGraphics
	call	_bbEnd
	mov	eax,0
	jmp	_75
_75:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_2
	mov	eax,0
	jmp	_78
_78:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_3
	mov	eax,0
	jmp	_81
_81:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_9
	mov	eax,0
	jmp	_84
_84:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UserInput:
	push	ebp
	mov	ebp,esp
	push	68
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,1
	jne	_110
	call	_brl_blitz_DebugStop
_110:
	push	38
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_111
	mov	edx,dword [_bb_Player]
	mov	eax,dword [_bb_Player]
	mov	eax,dword [eax+32]
	sub	eax,7
	mov	dword [edx+32],eax
_111:
	push	40
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_112
	mov	edx,dword [_bb_Player]
	mov	eax,dword [_bb_Player]
	mov	eax,dword [eax+32]
	add	eax,7
	mov	dword [edx+32],eax
_112:
	mov	eax,0
	jmp	_86
_86:
	mov	esp,ebp
	pop	ebp
	ret
_bb_AIMovement:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [_bb_Ball]
	mov	eax,dword [_bb_AI]
	mov	eax,dword [eax+32]
	cmp	dword [edx+32],eax
	jle	_113
	mov	edx,dword [_bb_AI]
	mov	eax,dword [_bb_AI]
	mov	eax,dword [eax+32]
	add	eax,6
	mov	dword [edx+32],eax
	jmp	_114
_113:
	mov	edx,dword [_bb_Ball]
	mov	eax,dword [_bb_AI]
	mov	eax,dword [eax+32]
	cmp	dword [edx+32],eax
	jge	_115
	mov	edx,dword [_bb_AI]
	mov	eax,dword [_bb_AI]
	mov	eax,dword [eax+32]
	sub	eax,6
	mov	dword [edx+32],eax
_115:
_114:
	mov	eax,0
	jmp	_88
_88:
	mov	esp,ebp
	pop	ebp
	ret
_bb_BallPhysics:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	0
	mov	eax,dword [_bb_Player]
	push	dword [eax+32]
	push	20
	mov	eax,dword [_bb_Player]
	push	dword [eax+8]
	push	0
	mov	eax,dword [_bb_Ball]
	push	dword [eax+32]
	mov	eax,dword [_bb_Ball]
	push	dword [eax+28]
	mov	eax,dword [_bb_Ball]
	push	dword [eax+8]
	call	_brl_max2d_ImagesCollide
	add	esp,32
	cmp	eax,0
	je	_116
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+48]
	neg	ebx
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+52]
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	jmp	_117
_116:
	push	0
	mov	eax,dword [_bb_AI]
	push	dword [eax+32]
	push	760
	mov	eax,dword [_bb_AI]
	push	dword [eax+8]
	push	0
	mov	eax,dword [_bb_Ball]
	push	dword [eax+32]
	mov	eax,dword [_bb_Ball]
	push	dword [eax+28]
	mov	eax,dword [_bb_Ball]
	push	dword [eax+8]
	call	_brl_max2d_ImagesCollide
	add	esp,32
	cmp	eax,0
	je	_118
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+48]
	neg	ebx
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+52]
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	jmp	_119
_118:
	mov	eax,dword [_bb_Ball]
	cmp	dword [eax+32],0
	jg	_120
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+48]
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+52]
	neg	ebx
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	jmp	_121
_120:
	mov	eax,dword [_bb_Ball]
	cmp	dword [eax+32],600
	jl	_122
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+48]
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	mov	esi,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	ebx,dword [eax+52]
	neg	ebx
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	jmp	_123
_122:
	mov	eax,dword [_bb_Ball]
	cmp	dword [eax+28],0
	jg	_124
	mov	edx,dword [_bb_AI]
	mov	eax,dword [_bb_AI]
	mov	eax,dword [eax+44]
	add	eax,1
	mov	dword [edx+44],eax
	call	_brl_max2d_Cls
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+28],400
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+32],300
	jmp	_125
_124:
	mov	eax,dword [_bb_Ball]
	cmp	dword [eax+28],800
	jl	_126
	mov	edx,dword [_bb_Player]
	mov	eax,dword [_bb_Player]
	mov	eax,dword [eax+44]
	add	eax,1
	mov	dword [edx+44],eax
	call	_brl_max2d_Cls
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+28],400
	mov	eax,dword [_bb_Ball]
	mov	dword [eax+32],300
_126:
_125:
_123:
_121:
_119:
_117:
	mov	ecx,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	edx,dword [eax+28]
	mov	eax,dword [_bb_Ball]
	add	edx,dword [eax+48]
	mov	dword [ecx+28],edx
	mov	ecx,dword [_bb_Ball]
	mov	eax,dword [_bb_Ball]
	mov	edx,dword [eax+32]
	mov	eax,dword [_bb_Ball]
	add	edx,dword [eax+52]
	mov	dword [ecx+32],edx
	mov	eax,0
	jmp	_90
_90:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TActor_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TActor
	mov	dword [ebx+8],_bbNullObject
	fldz
	fstp	dword [ebx+12]
	fldz
	fstp	dword [ebx+16]
	mov	dword [ebx+20],0
	mov	dword [ebx+24],0
	mov	dword [ebx+28],0
	mov	dword [ebx+32],0
	mov	dword [ebx+36],0
	mov	dword [ebx+40],_bbEmptyString
	mov	dword [ebx+44],0
	mov	dword [ebx+48],0
	mov	dword [ebx+52],0
	mov	eax,0
	jmp	_93
_93:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TActor_Actor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	ebx,dword [ebp+8]
	push	0
	mov	eax,dword [ebx+32]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [ebx+28]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	push	dword [ebx+8]
	call	_brl_max2d_DrawImage
	add	esp,16
	mov	eax,dword [ebx+20]
	mov	dword [ebp+-4],eax
	fild	dword [ebp+-4]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	dword [ebx+24]
	call	_brl_max2d_SetBlend
	add	esp,4
	mov	eax,0
	jmp	_96
_96:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TActor_Create:
	push	ebp
	mov	ebp,esp
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	jmp	_98
_98:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_108:
	dd	0
_31:
	db	"z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0",0
_32:
	db	"New",0
_33:
	db	"()i",0
	align	4
_30:
	dd	2
	dd	_31
	dd	6
	dd	_32
	dd	_33
	dd	16
	dd	0
	align	4
_2:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_30
	dd	8
	dd	__bb_z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_35:
	db	"z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f",0
_36:
	db	"Name",0
_37:
	db	"$",0
	align	4
_38:
	dd	_bbStringClass
	dd	2147483646
	dd	4
	dw	80,111,110,103
_39:
	db	"MajorVersion",0
_40:
	db	"i",0
	align	4
_41:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_42:
	db	"MinorVersion",0
_43:
	db	"Revision",0
	align	4
_44:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_45:
	db	"VersionString",0
	align	4
_46:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	48,46,48,46,49
_47:
	db	"AssemblyInfo",0
	align	4
_48:
	dd	_bbStringClass
	dd	2147483646
	dd	10
	dw	80,111,110,103,32,48,46,48,46,49
_49:
	db	"Platform",0
	align	4
_50:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	87,105,110,51,50
_51:
	db	"Architecture",0
	align	4
_52:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	120,56,54
_53:
	db	"DebugOn",0
	align	4
_34:
	dd	2
	dd	_35
	dd	1
	dd	_36
	dd	_37
	dd	_38
	dd	1
	dd	_39
	dd	_40
	dd	_41
	dd	1
	dd	_42
	dd	_40
	dd	_41
	dd	1
	dd	_43
	dd	_40
	dd	_44
	dd	1
	dd	_45
	dd	_37
	dd	_46
	dd	1
	dd	_47
	dd	_37
	dd	_48
	dd	1
	dd	_49
	dd	_37
	dd	_50
	dd	1
	dd	_51
	dd	_37
	dd	_52
	dd	1
	dd	_53
	dd	_40
	dd	_41
	dd	6
	dd	_32
	dd	_33
	dd	16
	dd	0
	align	4
_3:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_34
	dd	8
	dd	__bb_z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	align	4
__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_Application:
	dd	_bbNullObject
	align	4
__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_Resources:
	dd	_bbNullObject
_55:
	db	"z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f",0
	align	4
_54:
	dd	2
	dd	_55
	dd	6
	dd	_32
	dd	_33
	dd	16
	dd	0
	align	4
_9:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_54
	dd	8
	dd	__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_57:
	db	"TActor",0
_58:
	db	"m_Actor",0
_59:
	db	":TImage",0
_60:
	db	"m_Sizex",0
_61:
	db	"f",0
_62:
	db	"m_Sizey",0
_63:
	db	"m_Alpha",0
_64:
	db	"m_Blend",0
_65:
	db	"m_Posx",0
_66:
	db	"m_Posy",0
_67:
	db	"m_Frame",0
_68:
	db	"m_Flag",0
_69:
	db	"m_Score",0
_70:
	db	"m_xv",0
_71:
	db	"m_yv",0
_72:
	db	"Actor",0
_73:
	db	"Create",0
_74:
	db	"():TActor",0
	align	4
_56:
	dd	2
	dd	_57
	dd	3
	dd	_58
	dd	_59
	dd	8
	dd	3
	dd	_60
	dd	_61
	dd	12
	dd	3
	dd	_62
	dd	_61
	dd	16
	dd	3
	dd	_63
	dd	_40
	dd	20
	dd	3
	dd	_64
	dd	_40
	dd	24
	dd	3
	dd	_65
	dd	_40
	dd	28
	dd	3
	dd	_66
	dd	_40
	dd	32
	dd	3
	dd	_67
	dd	_40
	dd	36
	dd	3
	dd	_68
	dd	_37
	dd	40
	dd	3
	dd	_69
	dd	_40
	dd	44
	dd	3
	dd	_70
	dd	_40
	dd	48
	dd	3
	dd	_71
	dd	_40
	dd	52
	dd	6
	dd	_32
	dd	_33
	dd	16
	dd	6
	dd	_72
	dd	_33
	dd	48
	dd	7
	dd	_73
	dd	_74
	dd	52
	dd	0
	align	4
_bb_TActor:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_56
	dd	56
	dd	__bb_TActor_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TActor_Actor
	dd	__bb_TActor_Create
	align	4
_100:
	dd	_bbNullObject
	align	4
_101:
	dd	0
	align	4
_bb_Player:
	dd	_bbNullObject
	align	4
_10:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,101,100,105,97,47,112,108,97,121,101,114,49,46,98,109
	dw	112
	align	4
_bb_AI:
	dd	_bbNullObject
	align	4
_11:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,101,100,105,97,47,112,108,97,121,101,114,50,46,98,109
	dw	112
	align	4
_bb_Ball:
	dd	_bbNullObject
	align	4
_12:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	77,101,100,105,97,47,98,97,108,108,46,98,109,112
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	80,108,97,121,101,114,32,49,58,32
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	80,108,97,121,101,114,32,50,58,32
