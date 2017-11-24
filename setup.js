rs.status()
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
  // try add
  while (1) {
    res = rs.add(host)
    if (res.ok) {
      break
    }
    sleep(1)
  }
}

tryAdd('rs1:27017')
tryAdd('rs2:27017')
