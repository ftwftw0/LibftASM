;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/19 16:29:28 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/20 15:09:50 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text					
	global _ft_memcpy

_ft_memcpy:
	mov r8, rdi
	mov rcx, rdx
	cld
	rep movsb
	mov rax, r8
	ret							; Returns
