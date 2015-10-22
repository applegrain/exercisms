module.exports = function() {
  var roster = {};

  function attrRoster() {
    return roster;
  }

  function addStudents(name, grade) {
    roster[grade] ? roster[grade].push(name) : roster[grade] = [name];
    sortRoster();
  }

  function studentsByGrade(grade) {
    return roster[grade] ? roster[grade].sort() : [];
  }

  function sortRoster() {
    for(grade in roster) {
      return roster[grade] = roster[grade].sort();
    }
  }

  return {
    add: addStudents,
    roster: attrRoster,
    grade: studentsByGrade
  }
}
