
Real_Madrid = {
	coaches: {
		head_coach: 'Zidane',
		assistant_coaches: [
			'David Bettoni',
			'Hamidou Msaidie'
		],
		goalkeepers_coach: 'Luis LLopis',
		fitness_coaches: [
			'Antonio Pintus',
			'Javier Mallo'
		]
	},
	players: {
		forwards: {
			wingers: [
				'Ronaldo',
				'Jese',
				'Lucas Vazquez'
			],
			strikers: [
				'Benzema',
				'Morata']
		},
		midfielders: {
			central: [
				'Kroos',
				'Casemiro',
				'Isco',
				'Modric',
				'Kovacic'
			],
			wide: [
				'James Rodriguez',
				'Bale'
			]
		},
		defenders: {
			central: [
				'Sergio Ramos',
				'Pepe',
				'Varane',
				'Nacho'
			],
			full_backs: [
				'Arbeloa',
				'Carvajal',
				'Danilo',
				'Marcelo'
			]
		},
		goalkeepers: [
				'Keylor Navas',
				'Kiko Casilla',
				'Ruben Yanez'
		]
	}
}


p Real_Madrid[:coaches][:fitness_coaches]

p Real_Madrid[:players][:midfielders][:wide][1]

p Real_Madrid[:players][:forwards][:wingers]

p Real_Madrid[:coaches]
