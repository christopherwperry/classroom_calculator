# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.
def assignment_score(grade_hash, student, assignment_num)
  grade_hash[student][assignment_num - 1]
end

# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_scores(grade_hash, assignment_num)
  a = []
  grade_hash.values.each { |e| a.push(e[assignment_num - 1]) }
  a
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_num)
  sum = 0
  a = []
  grade_hash.values.each { |dude| a.push(dude[assignment_num - 1]) }
  a.each { |x| sum += x }
  average = sum/a.length
end

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
def averages(grade_hash)
  hash = {}
  grade_hash.map do |name, grades|
    score = 0
    grades.each do |grade|
      score += grade
    end
    average = score/grades.length
    hash[name] = average
  end
  hash
  # sum = 0
  # grade_hash.each { |x| sum += x }
  # average = sum/grade_hash.length
end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
def letter_grade(score)
  if score >= 90
    grade = "A"
  elsif score >= 80
    grade = "B"
  elsif score >= 70
    grade = "C"
  elsif score >= 60
    grade = "D"
  else
    grade = "F"
  end
end

# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)

end

# Return the average for the entire class.
def class_average(grade_hash)
  sum = 0
  grade_hash.values.each { |student| student.each {|grades| sum+= grades }}
  average = sum/(grade_hash.length**2)
end

# Return an array of the top `number_of_students` students.
def top_students(grade_hash, number_of_students)
  grade_hash
end
