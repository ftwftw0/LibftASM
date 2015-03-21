;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/19 16:29:28 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/19 18:14:10 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text					
	global _ft_memset

_ft_memset:
	mov r8, rdi
	mov rcx, rdx
	mov	al, sil
	cld
	rep stosb
	mov rax, r8
	ret							; Returns
