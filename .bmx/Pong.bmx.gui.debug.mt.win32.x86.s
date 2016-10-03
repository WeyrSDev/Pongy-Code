	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_fmod_fmod
	extrn	___bb_fontmachine_fontmachine
	extrn	___bb_glmax2d_glmax2d
	extrn	___bb_physlite_physlite
	extrn	___bb_timelinefx_timelinefx
	extrn	___bb_timer_timer
	extrn	___bb_tweener_tweener
	extrn	___bb_zipstreamloader_zipstreamloader
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
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_blitz_DebugStop
	extrn	_brl_blitz_NullObjectError
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
	extrn	_odd_physlite_PhysicsBegin
	extrn	_odd_physlite_PhysicsEnd
	extrn	_odd_physlite_PhysicsUpdate
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
	cmp	dword [_248],0
	je	_249
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_249:
	mov	dword [_248],1
	push	ebp
	push	_226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_glmax2d_glmax2d
	call	___bb_fontmachine_fontmachine
	call	___bb_timelinefx_timelinefx
	call	___bb_tweener_tweener
	call	___bb_zipstreamloader_zipstreamloader
	call	___bb_fmod_fmod
	call	___bb_physlite_physlite
	call	___bb_bmploader_bmploader
	call	___bb_timer_timer
	push	_8
	call	_bbObjectRegisterType
	add	esp,4
	push	_9
	call	_bbObjectRegisterType
	add	esp,4
	push	_106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_15
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TActor
	call	_bbObjectRegisterType
	add	esp,4
	push	_109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	60
	push	0
	push	600
	push	800
	call	_brl_graphics_Graphics
	add	esp,20
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbMilliSecs
	push	eax
	call	_brl_random_SeedRnd
	add	esp,4
	push	_114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	1065353216
	push	1065353216
	push	1142292480
	push	1145569280
	call	_odd_physlite_PhysicsBegin
	add	esp,20
	push	_115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_AutoMidHandle
	add	esp,4
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	call	_brl_max2d_AutoImageFlags
	add	esp,4
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_118]
	and	eax,1
	cmp	eax,0
	jne	_119
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	mov	eax,dword [eax]
	call	dword [eax+52]
	mov	dword [_bb_Player],eax
	or	dword [_118],1
_119:
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	push	-1
	push	_16
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebx+8],eax
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_126
	call	_brl_blitz_NullObjectError
_126:
	mov	dword [ebx+28],10
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_130
	call	_brl_blitz_NullObjectError
_130:
	mov	dword [ebx+32],250
	push	_132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_134
	call	_brl_blitz_NullObjectError
_134:
	mov	dword [ebx+20],1
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	mov	dword [ebx+24],1
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	mov	dword [ebx+44],0
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_118]
	and	eax,2
	cmp	eax,0
	jne	_145
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	mov	eax,dword [eax]
	call	dword [eax+52]
	mov	dword [_bb_AI],eax
	or	dword [_118],2
_145:
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_148
	call	_brl_blitz_NullObjectError
_148:
	push	-1
	push	_17
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebx+8],eax
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	mov	dword [ebx+28],770
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	mov	dword [ebx+32],250
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	mov	dword [ebx+20],1
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_164
	call	_brl_blitz_NullObjectError
_164:
	mov	dword [ebx+24],1
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	mov	dword [ebx+44],0
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_118]
	and	eax,4
	cmp	eax,0
	jne	_171
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	mov	eax,dword [eax]
	call	dword [eax+52]
	mov	dword [_bb_Ball],eax
	or	dword [_118],4
_171:
	push	_172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_174
	call	_brl_blitz_NullObjectError
_174:
	push	-1
	push	_18
	call	_brl_max2d_LoadImage
	add	esp,8
	mov	dword [ebx+8],eax
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_178
	call	_brl_blitz_NullObjectError
_178:
	mov	dword [ebx+28],400
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_182
	call	_brl_blitz_NullObjectError
_182:
	mov	dword [ebx+32],300
	push	_184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_186
	call	_brl_blitz_NullObjectError
_186:
	mov	dword [ebx+20],1
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	mov	dword [ebx+24],1
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_194
	call	_brl_blitz_NullObjectError
_194:
	push	6
	push	3
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+48],eax
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_198
	call	_brl_blitz_NullObjectError
_198:
	push	8
	push	-8
	call	_brl_random_Rand
	add	esp,8
	mov	dword [ebx+52],eax
	push	_200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_21:
	push	ebp
	push	_222
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_odd_physlite_PhysicsUpdate
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_max2d_Cls
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_205
	call	_brl_blitz_NullObjectError
_205:
	push	0
	push	0
	push	dword [ebx+44]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_22
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_208
	call	_brl_blitz_NullObjectError
_208:
	push	1101004800
	push	0
	push	dword [ebx+44]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_23
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_max2d_DrawText
	add	esp,12
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_BallPhysics
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_212
	call	_brl_blitz_NullObjectError
_212:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_215
	call	_brl_blitz_NullObjectError
_215:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_218
	call	_brl_blitz_NullObjectError
_218:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_UserInput
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_AIMovement
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	-1
	call	_brl_graphics_Flip
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_19:
	push	27
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_21
_20:
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_graphics_EndGraphics
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_odd_physlite_PhysicsEnd
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_81
_81:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_251
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_8
	push	ebp
	push	_250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_84
_84:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_255
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_9
	push	ebp
	push	_254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_87
_87:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_258
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_15
	push	ebp
	push	_257
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_90
_90:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UserInput:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	ebp
	push	_281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	68
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,1
	jne	_260
	push	ebp
	push	_262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_260:
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	38
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_264
	push	ebp
	push	_271
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_267
	call	_brl_blitz_NullObjectError
_267:
	mov	esi,dword [_bb_Player]
	cmp	esi,_bbNullObject
	jne	_270
	call	_brl_blitz_NullObjectError
_270:
	mov	eax,dword [esi+32]
	sub	eax,7
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_264:
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	40
	call	_brl_polledinput_KeyDown
	add	esp,4
	cmp	eax,0
	je	_273
	push	ebp
	push	_280
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	mov	esi,dword [_bb_Player]
	cmp	esi,_bbNullObject
	jne	_279
	call	_brl_blitz_NullObjectError
_279:
	mov	eax,dword [esi+32]
	add	eax,7
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_273:
	mov	ebx,0
	jmp	_92
_92:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AIMovement:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	ebp
	push	_311
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_285
	call	_brl_blitz_NullObjectError
_285:
	mov	esi,dword [_bb_AI]
	cmp	esi,_bbNullObject
	jne	_287
	call	_brl_blitz_NullObjectError
_287:
	mov	eax,dword [esi+32]
	cmp	dword [ebx+32],eax
	jle	_288
	push	ebp
	push	_295
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	mov	esi,dword [_bb_AI]
	cmp	esi,_bbNullObject
	jne	_294
	call	_brl_blitz_NullObjectError
_294:
	mov	eax,dword [esi+32]
	add	eax,6
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_296
_288:
	push	ebp
	push	_310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_299
	call	_brl_blitz_NullObjectError
_299:
	mov	esi,dword [_bb_AI]
	cmp	esi,_bbNullObject
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	mov	eax,dword [esi+32]
	cmp	dword [ebx+32],eax
	jge	_302
	push	ebp
	push	_309
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_305
	call	_brl_blitz_NullObjectError
_305:
	mov	esi,dword [_bb_AI]
	cmp	esi,_bbNullObject
	jne	_308
	call	_brl_blitz_NullObjectError
_308:
	mov	eax,dword [esi+32]
	sub	eax,6
	mov	dword [ebx+32],eax
	call	dword [_bbOnDebugLeaveScope]
_302:
	call	dword [_bbOnDebugLeaveScope]
_296:
	mov	ebx,0
	jmp	_94
_94:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_BallPhysics:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,ebp
	push	eax
	push	_445
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_Ball]
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	jne	_315
	call	_brl_blitz_NullObjectError
_315:
	mov	eax,dword [_bb_Ball]
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	mov	edi,dword [_bb_Ball]
	cmp	edi,_bbNullObject
	jne	_319
	call	_brl_blitz_NullObjectError
_319:
	mov	esi,dword [_bb_Player]
	cmp	esi,_bbNullObject
	jne	_321
	call	_brl_blitz_NullObjectError
_321:
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_323
	call	_brl_blitz_NullObjectError
_323:
	push	0
	push	dword [ebx+32]
	push	20
	push	dword [esi+8]
	push	0
	push	dword [edi+32]
	mov	eax,dword [ebp-4]
	push	dword [eax+28]
	mov	eax,dword [ebp-12]
	push	dword [eax+8]
	call	_brl_max2d_ImagesCollide
	add	esp,32
	cmp	eax,0
	je	_324
	mov	eax,ebp
	push	eax
	push	_337
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_327
	call	_brl_blitz_NullObjectError
_327:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_330
	call	_brl_blitz_NullObjectError
_330:
	mov	ebx,dword [ebx+48]
	neg	ebx
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_336
	call	_brl_blitz_NullObjectError
_336:
	mov	ebx,dword [ebx+52]
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_338
_324:
	mov	eax,ebp
	push	eax
	push	_428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_Ball]
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	mov	eax,dword [_bb_Ball]
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	jne	_343
	call	_brl_blitz_NullObjectError
_343:
	mov	edi,dword [_bb_Ball]
	cmp	edi,_bbNullObject
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	mov	esi,dword [_bb_AI]
	cmp	esi,_bbNullObject
	jne	_347
	call	_brl_blitz_NullObjectError
_347:
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	push	0
	push	dword [ebx+32]
	push	760
	push	dword [esi+8]
	push	0
	push	dword [edi+32]
	mov	eax,dword [ebp-8]
	push	dword [eax+28]
	mov	eax,dword [ebp-16]
	push	dword [eax+8]
	call	_brl_max2d_ImagesCollide
	add	esp,32
	cmp	eax,0
	je	_350
	mov	eax,ebp
	push	eax
	push	_363
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
	mov	ebx,dword [ebx+48]
	neg	ebx
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_362
	call	_brl_blitz_NullObjectError
_362:
	mov	ebx,dword [ebx+52]
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_364
_350:
	mov	eax,ebp
	push	eax
	push	_427
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	cmp	dword [ebx+32],0
	jg	_368
	mov	eax,ebp
	push	eax
	push	_381
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_371
	call	_brl_blitz_NullObjectError
_371:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	mov	ebx,dword [ebx+48]
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_377
	call	_brl_blitz_NullObjectError
_377:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_380
	call	_brl_blitz_NullObjectError
_380:
	mov	ebx,dword [ebx+52]
	neg	ebx
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_382
_368:
	mov	eax,ebp
	push	eax
	push	_426
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	cmp	dword [ebx+32],600
	jl	_386
	mov	eax,ebp
	push	eax
	push	_399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_389
	call	_brl_blitz_NullObjectError
_389:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	mov	ebx,dword [ebx+48]
	push	2
	push	-2
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+48],ebx
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_395
	call	_brl_blitz_NullObjectError
_395:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_398
	call	_brl_blitz_NullObjectError
_398:
	mov	ebx,dword [ebx+52]
	neg	ebx
	push	1
	push	-1
	call	_brl_random_Rand
	add	esp,8
	add	ebx,eax
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_400
_386:
	mov	eax,ebp
	push	eax
	push	_425
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_403
	call	_brl_blitz_NullObjectError
_403:
	cmp	dword [ebx+28],0
	jg	_404
	mov	eax,ebp
	push	eax
	push	_411
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_AI]
	cmp	ebx,_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	mov	esi,dword [_bb_AI]
	cmp	esi,_bbNullObject
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	mov	eax,dword [esi+44]
	add	eax,1
	mov	dword [ebx+44],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_412
_404:
	mov	eax,ebp
	push	eax
	push	_424
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
	cmp	dword [ebx+28],800
	jl	_416
	mov	eax,ebp
	push	eax
	push	_423
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Player]
	cmp	ebx,_bbNullObject
	jne	_419
	call	_brl_blitz_NullObjectError
_419:
	mov	esi,dword [_bb_Player]
	cmp	esi,_bbNullObject
	jne	_422
	call	_brl_blitz_NullObjectError
_422:
	mov	eax,dword [esi+44]
	add	eax,1
	mov	dword [ebx+44],eax
	call	dword [_bbOnDebugLeaveScope]
_416:
	call	dword [_bbOnDebugLeaveScope]
_412:
	call	dword [_bbOnDebugLeaveScope]
_400:
	call	dword [_bbOnDebugLeaveScope]
_382:
	call	dword [_bbOnDebugLeaveScope]
_364:
	call	dword [_bbOnDebugLeaveScope]
_338:
	push	_429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_431
	call	_brl_blitz_NullObjectError
_431:
	mov	edi,ebx
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_434
	call	_brl_blitz_NullObjectError
_434:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_436
	call	_brl_blitz_NullObjectError
_436:
	mov	eax,dword [esi+28]
	add	eax,dword [ebx+48]
	mov	dword [edi+28],eax
	push	_437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	mov	edi,ebx
	mov	esi,dword [_bb_Ball]
	cmp	esi,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	mov	ebx,dword [_bb_Ball]
	cmp	ebx,_bbNullObject
	jne	_444
	call	_brl_blitz_NullObjectError
_444:
	mov	eax,dword [esi+32]
	add	eax,dword [ebx+52]
	mov	dword [edi+32],eax
	mov	ebx,0
	jmp	_96
_96:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TActor_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_448
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TActor
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],_bbNullObject
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+12]
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+16]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],_bbEmptyString
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],0
	push	ebp
	push	_447
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_99
_99:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TActor_Actor:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_463
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_452
	call	_brl_blitz_NullObjectError
_452:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_454
	call	_brl_blitz_NullObjectError
_454:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_456
	call	_brl_blitz_NullObjectError
_456:
	push	0
	mov	eax,dword [ebx+32]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	mov	eax,dword [esi+28]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	push	dword [edi+8]
	call	_brl_max2d_DrawImage
	add	esp,16
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_459
	call	_brl_blitz_NullObjectError
_459:
	mov	eax,dword [ebx+20]
	mov	dword [ebp+-8],eax
	fild	dword [ebp+-8]
	sub	esp,4
	fstp	dword [esp]
	call	_brl_max2d_SetAlpha
	add	esp,4
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_462
	call	_brl_blitz_NullObjectError
_462:
	push	dword [ebx+24]
	call	_brl_max2d_SetBlend
	add	esp,4
	mov	ebx,0
	jmp	_102
_102:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TActor_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TActor
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	jmp	_104
_104:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_248:
	dd	0
_227:
	db	"Pong",0
_228:
	db	"PLAYER_SPEED",0
_46:
	db	"i",0
	align	4
_229:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	55
_230:
	db	"COMPUTER_SPEED",0
	align	4
_231:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	54
_232:
	db	"XRANDOM_FACTOR",0
	align	4
_233:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	50
_234:
	db	"YRANDOM_FACTOR",0
	align	4
_50:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_235:
	db	"START_XV_MIN",0
	align	4
_236:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	51
_237:
	db	"START_XV_MAX",0
_238:
	db	"START_YV_MIN",0
	align	4
_239:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	45,56
_240:
	db	"START_YV_MAX",0
	align	4
_241:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	56
_242:
	db	"My",0
_243:
	db	":z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f",0
	align	4
_110:
	dd	_bbNullObject
_244:
	db	"Player",0
_245:
	db	":TActor",0
	align	4
_bb_Player:
	dd	_bbNullObject
_246:
	db	"AI",0
	align	4
_bb_AI:
	dd	_bbNullObject
_247:
	db	"Ball",0
	align	4
_bb_Ball:
	dd	_bbNullObject
	align	4
_226:
	dd	1
	dd	_227
	dd	1
	dd	_228
	dd	_46
	dd	_229
	dd	1
	dd	_230
	dd	_46
	dd	_231
	dd	1
	dd	_232
	dd	_46
	dd	_233
	dd	1
	dd	_234
	dd	_46
	dd	_50
	dd	1
	dd	_235
	dd	_46
	dd	_236
	dd	1
	dd	_237
	dd	_46
	dd	_231
	dd	1
	dd	_238
	dd	_46
	dd	_239
	dd	1
	dd	_240
	dd	_46
	dd	_241
	dd	4
	dd	_242
	dd	_243
	dd	_110
	dd	4
	dd	_244
	dd	_245
	dd	_bb_Player
	dd	4
	dd	_246
	dd	_245
	dd	_bb_AI
	dd	4
	dd	_247
	dd	_245
	dd	_bb_Ball
	dd	0
_37:
	db	"z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0",0
_38:
	db	"New",0
_39:
	db	"()i",0
	align	4
_36:
	dd	2
	dd	_37
	dd	6
	dd	_38
	dd	_39
	dd	16
	dd	0
	align	4
_8:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_36
	dd	8
	dd	__bb_z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_41:
	db	"z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f",0
_42:
	db	"Name",0
_43:
	db	"$",0
	align	4
_44:
	dd	_bbStringClass
	dd	2147483646
	dd	4
	dw	80,111,110,103
_45:
	db	"MajorVersion",0
	align	4
_47:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_48:
	db	"MinorVersion",0
_49:
	db	"Revision",0
_51:
	db	"VersionString",0
	align	4
_52:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	48,46,48,46,49
_53:
	db	"AssemblyInfo",0
	align	4
_54:
	dd	_bbStringClass
	dd	2147483646
	dd	10
	dw	80,111,110,103,32,48,46,48,46,49
_55:
	db	"Platform",0
	align	4
_56:
	dd	_bbStringClass
	dd	2147483646
	dd	5
	dw	87,105,110,51,50
_57:
	db	"Architecture",0
	align	4
_58:
	dd	_bbStringClass
	dd	2147483646
	dd	3
	dw	120,56,54
_59:
	db	"DebugOn",0
	align	4
_40:
	dd	2
	dd	_41
	dd	1
	dd	_42
	dd	_43
	dd	_44
	dd	1
	dd	_45
	dd	_46
	dd	_47
	dd	1
	dd	_48
	dd	_46
	dd	_47
	dd	1
	dd	_49
	dd	_46
	dd	_50
	dd	1
	dd	_51
	dd	_43
	dd	_52
	dd	1
	dd	_53
	dd	_43
	dd	_54
	dd	1
	dd	_55
	dd	_43
	dd	_56
	dd	1
	dd	_57
	dd	_43
	dd	_58
	dd	1
	dd	_59
	dd	_46
	dd	_50
	dd	6
	dd	_38
	dd	_39
	dd	16
	dd	0
	align	4
_9:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_40
	dd	8
	dd	__bb_z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_107:
	db	"C:/Users/Damian/Desktop/PONG/Pong.bmx",0
	align	4
_106:
	dd	_107
	dd	92
	dd	5
	align	4
__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_Application:
	dd	_bbNullObject
	align	4
_108:
	dd	_107
	dd	93
	dd	5
	align	4
__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_Resources:
	dd	_bbNullObject
_61:
	db	"z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f",0
	align	4
_60:
	dd	2
	dd	_61
	dd	6
	dd	_38
	dd	_39
	dd	16
	dd	0
	align	4
_15:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_60
	dd	8
	dd	__bb_z_My_00b9a709_b4a7_4608_a51a_42deb7a8117f_New
	dd	_bbObjectDtor
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_63:
	db	"TActor",0
_64:
	db	"m_Actor",0
_65:
	db	":TImage",0
_66:
	db	"m_Sizex",0
_67:
	db	"f",0
_68:
	db	"m_Sizey",0
_69:
	db	"m_Alpha",0
_70:
	db	"m_Blend",0
_71:
	db	"m_Posx",0
_72:
	db	"m_Posy",0
_73:
	db	"m_Frame",0
_74:
	db	"m_Flag",0
_75:
	db	"m_Score",0
_76:
	db	"m_xv",0
_77:
	db	"m_yv",0
_78:
	db	"Actor",0
_79:
	db	"Create",0
_80:
	db	"():TActor",0
	align	4
_62:
	dd	2
	dd	_63
	dd	3
	dd	_64
	dd	_65
	dd	8
	dd	3
	dd	_66
	dd	_67
	dd	12
	dd	3
	dd	_68
	dd	_67
	dd	16
	dd	3
	dd	_69
	dd	_46
	dd	20
	dd	3
	dd	_70
	dd	_46
	dd	24
	dd	3
	dd	_71
	dd	_46
	dd	28
	dd	3
	dd	_72
	dd	_46
	dd	32
	dd	3
	dd	_73
	dd	_46
	dd	36
	dd	3
	dd	_74
	dd	_43
	dd	40
	dd	3
	dd	_75
	dd	_46
	dd	44
	dd	3
	dd	_76
	dd	_46
	dd	48
	dd	3
	dd	_77
	dd	_46
	dd	52
	dd	6
	dd	_38
	dd	_39
	dd	16
	dd	6
	dd	_78
	dd	_39
	dd	48
	dd	7
	dd	_79
	dd	_80
	dd	52
	dd	0
	align	4
_bb_TActor:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_62
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
_109:
	dd	_107
	dd	97
	dd	1
_112:
	db	"C:/Users/Damian/Desktop/PONG/Main.bmx",0
	align	4
_111:
	dd	_112
	dd	3
	dd	1
	align	4
_113:
	dd	_112
	dd	4
	dd	1
	align	4
_114:
	dd	_112
	dd	5
	dd	1
	align	4
_115:
	dd	_112
	dd	6
	dd	1
	align	4
_116:
	dd	_112
	dd	7
	dd	1
	align	4
_117:
	dd	_112
	dd	21
	dd	1
	align	4
_118:
	dd	0
	align	4
_120:
	dd	_112
	dd	22
	dd	1
	align	4
_16:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,101,100,105,97,47,112,108,97,121,101,114,49,46,98,109
	dw	112
	align	4
_124:
	dd	_112
	dd	23
	dd	1
	align	4
_128:
	dd	_112
	dd	24
	dd	1
	align	4
_132:
	dd	_112
	dd	25
	dd	1
	align	4
_136:
	dd	_112
	dd	26
	dd	1
	align	4
_140:
	dd	_112
	dd	27
	dd	1
	align	4
_144:
	dd	_112
	dd	31
	dd	1
	align	4
_146:
	dd	_112
	dd	32
	dd	1
	align	4
_17:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,101,100,105,97,47,112,108,97,121,101,114,50,46,98,109
	dw	112
	align	4
_150:
	dd	_112
	dd	33
	dd	1
	align	4
_154:
	dd	_112
	dd	34
	dd	1
	align	4
_158:
	dd	_112
	dd	35
	dd	1
	align	4
_162:
	dd	_112
	dd	36
	dd	1
	align	4
_166:
	dd	_112
	dd	37
	dd	1
	align	4
_170:
	dd	_112
	dd	40
	dd	1
	align	4
_172:
	dd	_112
	dd	41
	dd	1
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	77,101,100,105,97,47,98,97,108,108,46,98,109,112
	align	4
_176:
	dd	_112
	dd	42
	dd	1
	align	4
_180:
	dd	_112
	dd	43
	dd	1
	align	4
_184:
	dd	_112
	dd	44
	dd	1
	align	4
_188:
	dd	_112
	dd	45
	dd	1
	align	4
_192:
	dd	_112
	dd	47
	dd	1
	align	4
_196:
	dd	_112
	dd	48
	dd	1
	align	4
_200:
	dd	_112
	dd	67
	dd	1
	align	4
_222:
	dd	3
	dd	0
	dd	0
	align	4
_201:
	dd	_112
	dd	56
	dd	3
	align	4
_202:
	dd	_112
	dd	57
	dd	4
	align	4
_203:
	dd	_112
	dd	58
	dd	3
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	80,108,97,121,101,114,32,49,58,32
	align	4
_206:
	dd	_112
	dd	59
	dd	3
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	80,108,97,121,101,114,32,50,58,32
	align	4
_209:
	dd	_112
	dd	60
	dd	3
	align	4
_210:
	dd	_112
	dd	61
	dd	3
	align	4
_213:
	dd	_112
	dd	62
	dd	3
	align	4
_216:
	dd	_112
	dd	63
	dd	3
	align	4
_219:
	dd	_112
	dd	64
	dd	6
	align	4
_220:
	dd	_112
	dd	65
	dd	6
	align	4
_221:
	dd	_112
	dd	66
	dd	9
	align	4
_223:
	dd	_112
	dd	69
	dd	1
	align	4
_224:
	dd	_112
	dd	70
	dd	1
	align	4
_225:
	dd	_112
	dd	71
	dd	1
_252:
	db	"Self",0
_253:
	db	":z_00b9a709_b4a7_4608_a51a_42deb7a8117f_3_0",0
	align	4
_251:
	dd	1
	dd	_38
	dd	2
	dd	_252
	dd	_253
	dd	-4
	dd	0
	align	4
_250:
	dd	3
	dd	0
	dd	0
_256:
	db	":z_blide_bg00b9a709_b4a7_4608_a51a_42deb7a8117f",0
	align	4
_255:
	dd	1
	dd	_38
	dd	2
	dd	_252
	dd	_256
	dd	-4
	dd	0
	align	4
_254:
	dd	3
	dd	0
	dd	0
	align	4
_258:
	dd	1
	dd	_38
	dd	2
	dd	_252
	dd	_243
	dd	-4
	dd	0
	align	4
_257:
	dd	3
	dd	0
	dd	0
_282:
	db	"UserInput",0
	align	4
_281:
	dd	1
	dd	_282
	dd	0
	align	4
_259:
	dd	_112
	dd	74
	dd	10
	align	4
_262:
	dd	3
	dd	0
	dd	0
	align	4
_261:
	dd	_112
	dd	74
	dd	37
	align	4
_263:
	dd	_112
	dd	75
	dd	4
	align	4
_271:
	dd	3
	dd	0
	dd	0
	align	4
_265:
	dd	_112
	dd	76
	dd	5
	align	4
_272:
	dd	_112
	dd	78
	dd	4
	align	4
_280:
	dd	3
	dd	0
	dd	0
	align	4
_274:
	dd	_112
	dd	79
	dd	5
_312:
	db	"AIMovement",0
	align	4
_311:
	dd	1
	dd	_312
	dd	0
	align	4
_283:
	dd	_112
	dd	84
	dd	7
	align	4
_295:
	dd	3
	dd	0
	dd	0
	align	4
_289:
	dd	_112
	dd	85
	dd	5
	align	4
_310:
	dd	3
	dd	0
	dd	0
	align	4
_297:
	dd	_112
	dd	86
	dd	3
	align	4
_309:
	dd	3
	dd	0
	dd	0
	align	4
_303:
	dd	_112
	dd	87
	dd	7
_446:
	db	"BallPhysics",0
	align	4
_445:
	dd	1
	dd	_446
	dd	0
	align	4
_313:
	dd	_112
	dd	92
	dd	7
	align	4
_337:
	dd	3
	dd	0
	dd	0
	align	4
_325:
	dd	_112
	dd	93
	dd	5
	align	4
_331:
	dd	_112
	dd	94
	dd	4
	align	4
_428:
	dd	3
	dd	0
	dd	0
	align	4
_339:
	dd	_112
	dd	95
	dd	3
	align	4
_363:
	dd	3
	dd	0
	dd	0
	align	4
_351:
	dd	_112
	dd	96
	dd	4
	align	4
_357:
	dd	_112
	dd	97
	dd	4
	align	4
_427:
	dd	3
	dd	0
	dd	0
	align	4
_365:
	dd	_112
	dd	98
	dd	3
	align	4
_381:
	dd	3
	dd	0
	dd	0
	align	4
_369:
	dd	_112
	dd	99
	dd	7
	align	4
_375:
	dd	_112
	dd	100
	dd	4
	align	4
_426:
	dd	3
	dd	0
	dd	0
	align	4
_383:
	dd	_112
	dd	101
	dd	3
	align	4
_399:
	dd	3
	dd	0
	dd	0
	align	4
_387:
	dd	_112
	dd	102
	dd	7
	align	4
_393:
	dd	_112
	dd	103
	dd	4
	align	4
_425:
	dd	3
	dd	0
	dd	0
	align	4
_401:
	dd	_112
	dd	104
	dd	3
	align	4
_411:
	dd	3
	dd	0
	dd	0
	align	4
_405:
	dd	_112
	dd	105
	dd	7
	align	4
_424:
	dd	3
	dd	0
	dd	0
	align	4
_413:
	dd	_112
	dd	106
	dd	3
	align	4
_423:
	dd	3
	dd	0
	dd	0
	align	4
_417:
	dd	_112
	dd	107
	dd	7
	align	4
_429:
	dd	_112
	dd	109
	dd	3
	align	4
_437:
	dd	_112
	dd	110
	dd	3
	align	4
_448:
	dd	1
	dd	_38
	dd	2
	dd	_252
	dd	_245
	dd	-4
	dd	0
	align	4
_447:
	dd	3
	dd	0
	dd	0
	align	4
_463:
	dd	1
	dd	_78
	dd	2
	dd	_252
	dd	_245
	dd	-4
	dd	0
_450:
	db	"C:/Users/Damian/Desktop/PONG/Includes/TActor.bmx",0
	align	4
_449:
	dd	_450
	dd	16
	dd	4
	align	4
_457:
	dd	_450
	dd	17
	dd	4
	align	4
_460:
	dd	_450
	dd	18
	dd	4
	align	4
_465:
	dd	1
	dd	_79
	dd	0
	align	4
_464:
	dd	_450
	dd	22
	dd	10
