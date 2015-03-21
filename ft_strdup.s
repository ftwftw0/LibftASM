;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/19 16:29:28 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/21 13:56:15 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_memcpy

	;; _ft_strdup:
;push r8
;push r9
;mov r8, rdi					; Save string to duplicate
;call _ft_strlen			; Calcul de la taille, stockee dans rax
;mov r9, rax
;mov rdi, rax
;inc rdi
;call _malloc
;cmp rax, 0
;je end
;mov [rax + r9], byte 0
;mov rdi, rax
;mov rsi, r8
;mov rdx, r9
;;; ;mov r9, rax
;call _ft_memcpy


_ft_strdup:
	push	r15
	push	r14
	mov		r15, rdi			; Stock the address of str
	call	_ft_strlen			; Call _ft_strlen (no joke)
	mov		r14, rax			; Stock the length of str
	mov		rdi, rax			; Prepare the call of _malloc
	inc		rdi					; And again...
	push	rdi
	call	_malloc				; Allocate len + 1 char
	pop		rdi
	cmp		rax, 0				; Secure the output of _malloc
	je		end
	mov		[rax + r14], byte 0	; Put a '\0' at the end of the allocated string.
	mov		rdi, rax			; Prepare the call of _ft_memcpy
	mov		rsi, r15			; And again...
	mov		rdx, r14			; And again...
	call	_ft_memcpy			; Call _ft_memcpy (no joke)

end:
	pop r15
	pop r14
	ret							; Returns

			;;;  Half-coded by Ludovic Chenut The Ugly, only god knows how ugly he is.
			;;;  you can find him on UPorn, UglyPorn, CrapPorn, and LuPorn.
									;~ Ludo l'pa bo ~; 