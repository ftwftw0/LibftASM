;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strndup.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 14:56:37 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/21 16:20:37 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_strndup
	extern _malloc
	extern _ft_strlen
	extern _ft_memcpy

_ft_strndup:
	push	r15
	push	r14
	mov		r15, rdi			; Save string ptr
	push	rsi
	call	_ft_strlen
	pop		rsi
	cmp		rsi, rax
	jl		ndup
	jmp		dup

dup:
	mov		r14, rax			; Save str's size
	jmp		keepgoing
	
ndup:
	mov		r14, rsi
	jmp		keepgoing
	
keepgoing:	
	mov		rdi, r14
	inc		rdi
	push	rdi
	mov		rsi, r14
	call	_malloc				; Malloc len + 1 char
	pop		rdi
	cmp		rax, 0				; Secure the output of _malloc
	je		end
	mov		rdi, rax			; Prepare the call of _ft_memcpy
	mov		[rax + r14], byte 0	; Put a '\0' at the end of the allocated string.
	mov		rsi, r15			; And again...
	mov		rdx, r14			; And again...
	call	_ft_memcpy			; Call _ft_memcpy (no joke)
	jmp		end

end:
	pop r15
	pop r14
	ret							; Returns

			;;;  Half-coded by Ludovic Chenut The Ugly, only god knows how ugly he is.
			;;;  you can find him on UPorn, UglyPorn, CrapPorn, and LuPorn.
									;~ Ludo l'pa bo ~; 