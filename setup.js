/* global rs, sleep, quit */

rs.initiate()

function tryAdd (host) {
  var status = rs.status()

  // if exist
  var isExist = status.members.find(function (member) {
    return member.name === host
  })
  if (isExist) {
    return
  }

  var res
  // try 5 times
  for (var i = 0; i < 5; i++) {
    res = rs.add(host)
    if (res.ok) {
      return
    }
    sleep(500)
  }

  // failed
  quit(1)
}

tryAdd('rs1:27017')
tryAdd('rs2:27017')
