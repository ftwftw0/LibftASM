;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: flagoutt <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/13 22:02:45 by flagoutt          #+#    #+#              ;
;    Updated: 2015/03/16 16:46:07 by flagoutt         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text					
	global _ft_bzero

_ft_bzero:
	cmp rsi, 0
	jz end						; Si egal
	mov [rdi], byte 0
	dec rsi
	inc rdi
	jmp _ft_bzero

end:
	ret							; Returns
