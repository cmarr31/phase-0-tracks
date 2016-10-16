living_organisms = {
	plants: {
		forest: [
			'shrubs',
			'wildflowers',
			'ferns',
			'mosses'
		],
		marine: [
			'algae',
			'kelp',
			'seaweed'
		],
		desert: [
			'tumbleweed',
			'cacti',
		]
	},
	animals: {
		forest: [
			'birds',
			'foxes',
			'deer'
		],
		marine: [
			'sharks',
			'coral'
		],
		desert: [
			'camels',
			'snakes',
			'scorpions'
		]
	}
}

# Wildflowers
p living_organisms [:plants][:forest][1]

# Sharks
p living_organisms [:animals][:marine][0]