/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   scop.hpp                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dracken24 <dracken24@student.42.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/28 13:00:56 by dracken24         #+#    #+#             */
/*   Updated: 2023/01/28 13:59:04 by dracken24        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# pragma once

# include <iostream>

# define WIDTH 1500
# define HEIGHT 980

typedef struct Scop
{
	Scop(void) {};
	~Scop(void) {};

	uint    width;
	uint    height;
} Scop;
