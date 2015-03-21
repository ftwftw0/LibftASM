;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/18 21:07:11 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/19 16:22:38 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
hoy:
	.string db "(null)", 10
	.line db 10

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp rdi, 0			; Check si la chaine 1 existe
	jz null						; Si egal
	mov r8, rdi
	call _ft_strlen				; Calcul de la taille, stockee dans rax
	mov rdi, r8
	jmp putstr				; Appel de len pour stocke la taille de rdi dans r9

putstr:
	mov rsi, rdi
	mov rdi, STDOUT
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	lea rsi, [rel hoy.line]
	mov rdi, STDOUT
	mov rdx, 2
	mov rax, MACH_SYSCALL(WRITE)
	syscall	
	jmp end

null:
	mov rax, MACH_SYSCALL(WRITE)
	lea rsi, [rel hoy.string]
	mov rdi, STDOUT
	mov rdx, 7
	syscall
	jmp end

end:
	mov rax, 1
	ret							; Returns
