;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/13 16:32:38 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/13 20:17:38 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isdigit
	
_ft_isdigit:
	cmp rdi, 32
	jl no						; Si inferieur
	cmp rdi, 126
	jg no						; Si superieur
	jmp y

no:
	mov rax, 0					; Valeur de retour -> 0
	jmp end

y:
	mov rax, 1					; Valeur de retour -> 1
	jmp end

end:
	ret							; Returns
