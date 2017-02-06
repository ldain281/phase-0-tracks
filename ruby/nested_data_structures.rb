e_school = {
	classroom: {
		room1: {
			teacher: 'Ms. Truth',
			assistant: 'Ms. Aid',
			student_data: {
				number_students: 18,
				level: 'kindergarten'
				},
			},
		room2: {
			teacher: 'Ms. False',
			student_data: {
				number_students: 19,
				level: 'First grade'
				},
			},
		room3: {
			teacher: 'Ms. Knowledge',
			student_data: {
				number_students: 24,
				level: 'Second grade'
				},
			},
		},
	office: {
		main_office: {
			principal: 'Ms. Jones',
			assistant: 'Mr. Smith'
		},
	},
	other: {
		gym: {
			teacher: 'Ms. Dunk',
			assistant: 'Mr. Slam'
			},
		lunchroom: {
			chefs: 'Ms. Mystery',
			assistant: 'Mr. Fry'
			},
		playground: {
			supervisor: 'Mr. Slide',
			assistant: 'Ms. Woodchip'
			},
		}	
	}
	p e_school[:other][:gym]
	#room 3 has a new teacher's assistant:
	e_school[:classroom][:room3].update(:assistant=>'Mr. Helper')
	p e_school[:classroom][:room3]
	#Ms. Woodchip married...Mr. Slide!!!:
	e_school[:other][:playground][:assistant]='Mrs. Woodchip'
	p e_school[:other][:playground][:assistant]
