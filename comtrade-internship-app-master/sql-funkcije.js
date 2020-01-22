module.exports = {
  mysql: require('mysql'),

  createPool(dbData) {
    this.pool = mysql.createPool(dbData)
  },

  execQuery(upit, callback) {
    this.pool.getConnection((err, connection) => {
      if (err) {
        console.log('Greska pri konekciji')
        return
      }
      connection.query(upit, (err, results) => {
        if (err) {
          console.log('Greska u upitu')
          console.log(err)
          return
        }
        callback(results)
      })
    })
  },
  
  execQueryParams(upit, params, callback) {
    this.pool.getConnection((err, connection) => {
      if (err) {
        console.log('Greska pri konekciji')
        return
      }
      connection.query(upit, params, (err, results) => {
        if (err) {
          console.log('Greska u upitu')
          console.log(err)
          return
        }
        callback(results)
      })
    })
  }
}