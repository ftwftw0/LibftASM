;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/20 17:47:45 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/20 20:34:30 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define READ				3
%define WRITE				4

section .data
yo:
	.buff db 0

section .text
	global _ft_cat

_ft_cat:
	cmp rdi, 0			; Check si fd < 0 ? <= ?
	jl end				;	Si egal, goto end
	push r14
	mov r14, rdi
	jmp loop				; Appel de len pour stocke la taille de rdi dans r9

loop:
	mov rdi, r14
	lea rsi, [rel yo.buff]
	mov rdx, 1
	mov rax, MACH_SYSCALL(READ)
	syscall
	jc end
	cmp rax, 0
	je end
	lea rsi, [rel yo.buff]
	mov [rsi + rax], byte 0
	mov rdi, STDOUT
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jmp loop

end:
	pop r14
	mov rax, 1
	ret							; Returns
