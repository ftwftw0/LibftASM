;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/16 16:47:58 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/19 19:28:08 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text					
	global _ft_strcat
	extern _ft_strlen
	
_ft_strcat:
	cmp rdi, 0			; Check si la chaine 1 existe
	jz end						; Si egal
	cmp rsi, 0			; Check si la chaine 2 existe
	jz end						; Si egal
	mov r8, rdi				; On save le ptr rdi dans r8
	mov r9, rsi
	call _ft_strlen			; Appel de strlen pour stocke la taille de rdi dans rax
	mov rsi, r9
	mov rdi, r8
	add rdi, rax

append:
	cmp [rsi], byte 0
	jz end
	mov cl, [rsi]
	mov [rdi], cl
	inc rsi
	inc rdi
	jmp append
	
end:
	mov [rdi], byte 0
	mov rax, r8
	ret							; Returns
