;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/19 16:29:28 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/19 19:22:51 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text					
	global _ft_memcpy

_ft_memcpy:
	mov r8, rdi
	mov rcx, rdx
	mov	al, sil
	cld
	rep movsb
	mov rax, r8
	ret							; Returns
