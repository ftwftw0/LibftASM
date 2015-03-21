;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/16 16:47:58 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/20 17:11:07 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text					
	global _ft_strlen

_ft_strlen:
	mov rsi, rdi
	mov rax, 0
	mov rcx, -1
	cld
	repnz scasb
	mov rax, -2
	sub rax, rcx
	ret							; Returns
