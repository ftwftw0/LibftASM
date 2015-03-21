;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/13 16:32:38 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/13 21:31:37 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_tolower

_ft_tolower:
	cmp rdi, 65
	jl no						; Si inferieur
	cmp rdi, 90
	jg no						; Si superieur
	jmp y

no:
	mov rax, rdi				; Valeur de retour -> 0
	jmp end

y:
	add rdi, 32
	mov rax, rdi			; Valeur de retour -> 1
	jmp end

end:
	ret							; Returns
