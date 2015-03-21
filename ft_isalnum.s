;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/13 18:04:58 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/13 20:12:13 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isalnum

_ft_isalnum:
	cmp rdi, 65
	jl else						; Si inferieur
	cmp rdi, 90
	jg else						; Si superieur egal
	jmp y

else:
	cmp rdi, 97
	jl elsenum						; Si inferieur
	cmp rdi, 122
	jg elsenum						; Si superieur egal
	jmp y

elsenum:
	cmp rdi, 48
	jl no						; Si inferieur
	cmp rdi, 57
	jg no						; Si superieur egal
	jmp y
	
no:
	mov rax, 0					; Valeur de retour -> 0
	jmp end

y:
	mov rax, 1					; Valeur de retour -> 1
	jmp end

end:
	ret							; Returns
