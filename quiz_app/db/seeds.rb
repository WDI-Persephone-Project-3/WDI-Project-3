i1 = Instructor.create({last_name: "Pak", first_name: "Suhyun", email: "suhyun@quizapp.com", password: "123", password_confirmation: "123"})
i2 = Instructor.create({last_name: "Olagundoye", first_name: "De", email: "de@quizapp.com", password: "123", password_confirmation: "123"})
i3 = Instructor.create({last_name: "Kolchinskiy", first_name: "Sergey", email: "sergey@quizapp.com", password: "123", password_confirmation: "123"})
i4 = Instructor.create({last_name: "Boseroy", first_name: "Ona", email: "ona@quizapp.com", password: "123", password_confirmation: "123"})
i5 = Instructor.create({last_name: "Gandikota", first_name: "Anusha", email: "anusha@quizapp.com", password: "123", password_confirmation: "123"})


c1 = Cohort.create({name: "Wolverine", instructor: i1})
c2 = Cohort.create({name: "Prof X", instructor: i3})
c3 = Cohort.create({name: "Storm", instructor: i2})
c4 = Cohort.create({name: "Wonder Woman", instructor: i4})
c5 = Cohort.create({name: "Cat Woman", instructor: i5})

s1 = Student.create({last_name: "Wayne", first_name: "John", email: "johnwayne@gmail.com", password: "123", password_confirmation: "123", cohort: c1})

s2 = Student.create({last_name: "Kent", first_name: "Clarke", email: "notsuperman@gmail.com", password: "123", password_confirmation: "123", cohort: c2})

s3 = Student.create({last_name: "BeGood", first_name: "Johnny", email: "goodygoody@gmail.com", password: "123", password_confirmation: "123", cohort: c3})

s4 = Student.create({last_name: "Stallone", first_name: "Sylvester", email: "rocky@gmail.com", password: "123", password_confirmation: "123", cohort: c4})

s5 = Student.create({last_name: "BeGood", first_name: "Johnny", email: "goodygoody@gmail.com", password: "123", password_confirmation: "123", cohort: c5})

q1 = Question.create({content: "1 + 1"})
q2 = Question.create({content: "1 + 2"})
q3 = Question.create({content: "1 + 3"})

a1 = Answer.create({choice: "1", question: q1, is_correct: false})
a2 = Answer.create({choice: "2", question: q1, is_correct: true})
a3 = Answer.create({choice: "3", question: q1, is_correct: false})
a4 = Answer.create({choice: "4", question: q1, is_correct: false})


a5 = Answer.create({choice: "1", question: q2, is_correct: false})
a6 = Answer.create({choice: "2", question: q2, is_correct: false})
a7 = Answer.create({choice: "3", question: q2, is_correct: true})
a8 = Answer.create({choice: "4", question: q2, is_correct: false})

a9 = Answer.create({choice: "1", question: q3, is_correct: false})
a10 = Answer.create({choice: "2", question: q3, is_correct: false})
a11 = Answer.create({choice: "3", question: q3, is_correct: false})
a12 = Answer.create({choice: "4", question: q3, is_correct: true})

test_quiz = Quiz.create({test_day: Date.today, instructor: Instructor.first})

test_quiz.questions.push(q1)
test_quiz.questions.push(q2)
test_quiz.questions.push(q3)
