;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/21 16:27:49 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/21 17:08:44 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

global _ft_isspace
	
_ft_isspace:
	cmp rdi, 9
	je y						; Si tab horiz
	cmp rdi, 10
	je y						; Si retour ligne
	cmp rdi, 13
	je y						; Si tab verti
	cmp rdi, 12
	je y						; Si superieur
	cmp rdi, 11
	je y						; Si superieur
	cmp rdi, 32
	je y						; Si superieur
	jmp no

no:
	mov rax, 0					; Valeur de retour -> 0
	jmp end

y:
	mov rax, 1					; Valeur de retour -> 1
	jmp end

end:
	ret							; Returns
