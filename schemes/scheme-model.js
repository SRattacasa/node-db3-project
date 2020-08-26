const db = require("../data/config")

const find = () => { 
   return db.select("*").from("Schemes")
}

const findById =  (id) => { 
  return db.select("*").from("Schemes").where("id", id)
}

const findSteps =  (id) => { 
    return db("Schemes")
    .innerJoin("Steps", "Schemes.id", "Steps.scheme_id")
    .where("Schemes.id", id)
    .select("Steps.step_number", "Steps.instructions")
    .orderBy("Steps.step_number")
}

const add = (scheme) => {
    return db("Schemes").insert(scheme)
}

const remove = id => {
    return db("Schemes").where("Schemes.id", id).delete()
}

const update = (changes, id) => {
    return db("Schemes")
      .where( "Schemes.id", id )
      .update(changes)
  }

module.exports = {
    find, 
    findById,
    findSteps,
    add,
    remove,
    update,
} 