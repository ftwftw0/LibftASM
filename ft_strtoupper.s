;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strtoupper.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 18:47:32 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/21 18:47:33 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_toupper
	
_ft_toupper:
	cmp rdi, 97
	jl no						; Si inferieur
	cmp rdi, 122
	jg no						; Si superieur
	jmp y

no:
	mov rax, rdi				; Valeur de retour -> 0
	jmp end

y:
	sub rdi, 32
	mov rax, rdi			; Valeur de retour -> 1
	jmp end

end:
	ret							; Returns
