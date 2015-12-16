
s1 = Student.create({last_name: "Wayne", first_name: "John", email: "johnwayne@gmail.com", password: "123", password_confirmation: "123"})

s2 = Student.create({last_name: "Kent", first_name: "Clarke", email: "notsuperman@gmail.com", password: "123", password_confirmation: "123"})

s3 = Student.create({last_name: "BeGood", first_name: "Johnny", email: "goodygoody@gmail.com", password: "123", password_confirmation: "123"})

s4 = Student.create({last_name: "Stallone", first_name: "Sylvester", email: "rocky@gmail.com", password: "123", password_confirmation: "123"})

s5 = Student.create({last_name: "BeGood", first_name: "Johnny", email: "goodygoody@gmail.com", password: "123", password_confirmation: "123"})

c1 = Cohort.create({name: "Wolverine"})
c2 = Cohort.create({name: "Prof X"})
c3 = Cohort.create({name: "Storm"})
c4 = Cohort.create({name: "Wonder Woman"})
c5 = Cohort.create({name: "Cat Woman"})


s1.cohort.push(c1)
s2.cohort.push(c2)
s3.cohort.push(c3)
s4.cohort.push(c4)
s5.cohort.push(c5)

i1 = Instructor.create({last_name: "Pak", first_name: "Suhyun", email: "suhyun@quizapp.com", password: "123", password_confirmation: "123"})
i2 = Instructor.create({last_name: "Olagundoye", first_name: "De", email: "de@quizapp.com", password: "123", password_confirmation: "123"})
i3 = Instructor.create({last_name: "Konchinskiy", first_name: "Serge", email: "serge@quizapp.com", password: "123", password_confirmation: "123"})
i4 = Instructor.create({last_name: "Boseroy", first_name: "Ona", email: "suhyun@quizapp.com", password: "123", password_confirmation: "123"})
i5 = Instructor.create({last_name: "Gandikota", first_name: "Anusha", email: "suhyun@quizapp.com", password: "123", password_confirmation: "123"})

c1.instructor.push(i1)
c2.instructor.push(i3)
c3.instructor.push(i2)
c4.instructor.push(i4)
c5.instructor.push(i5)
