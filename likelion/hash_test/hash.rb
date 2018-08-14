student = {
  name: "james",
  age: 19,
  gender: "male",
  # school: ["HighSchool", "Collegue"]
  school:{
    HighShcool: ["Japaness", "Social" ],
    Collegue: ["ADPR", "ART"],
    GraduateSchool: ["HongIk"]
  }
}

# 중첩된 자료를 어떻게 찾을 것인가
puts student[:school][:Collegue][0]
puts student[:gender]
